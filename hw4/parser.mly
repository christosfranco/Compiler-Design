%{
open Ast

let loc (startpos:Lexing.position) (endpos:Lexing.position) (elt:'a) : 'a node =
  { elt ; loc=Range.mk_lex_range startpos endpos }

%}

(* 
    CHECK all of the binary operations except +, -, *, and ==
    CHECK the boolean type and values
    default-initialized and implicitly-initialized array expressions and array global initializers
    string literal expressions and global initializers
    CHECK for loops
 *)

/* Declare your tokens here. */
%token EOF
%token <int64>  INT
%token NULL
%token <string> STRING
%token <string> IDENT
%token TRUE /*bool*/
%token FALSE /*bool*/

/* array */
%token <Ast.exp Ast.node list> ARRAY

/* Types */
%token TBOOL    /*type bool*/
%token TINT     /* int */
%token TVOID    /* void */
%token TSTRING  /* string */

%token IF       /* if */
%token ELSE     /* else */
%token WHILE    /* while */
%token RETURN   /* return */
%token VAR      /* var */
%token SEMI     /* ; */
%token COMMA    /* , */
%token LBRACE   /* { */
%token RBRACE   /* } */


%token FOR      /* for loop*/

/* Symbols */
%token PLUS     /* + */
%token DASH     /* - */
%token STAR     /* * */

/* Symbols */
%token LPAREN   /* ( */
%token RPAREN   /* ) */
%token LBRACKET /* [ */
%token RBRACKET /* ] */
%token TILDE    /* ~ */
%token BANG     /* ! */
%token GLOBAL   /* global */

/* Compare */
%token EQEQ     /* == */
%token EQ       /* = */
%token LESS     /* < */
%token LESSEQ   /* <= */
%token GREAT    /* > */
%token GREATEQ  /* >= */

/* SHift ops */
%token LLSHIFT  /* << */
%token LRSHIFT  /* >> */
%token ARSHIFT  /* >>> */

/* bin ops */
%token NEQ      /* != */
%token LAND     /* & */
%token LOR      /* | */
%token BAND     /* [&] */
%token BOR      /* [|] */

%token NEW      /* new */

%left PLUS DASH
%left STAR
%nonassoc BANG
%nonassoc TILDE
%nonassoc LBRACKET
%nonassoc LPAREN

/* ---------------------------------------------------------------------- */

%start prog
%start exp_top
%start stmt_top
%type <Ast.exp Ast.node> exp_top
%type <Ast.stmt Ast.node> stmt_top

%type <Ast.prog> prog
%type <Ast.exp Ast.node> exp
%type <Ast.stmt Ast.node> stmt
%type <Ast.block> block
%type <Ast.ty> ty
%%

exp_top:
  | e=exp EOF { e }

stmt_top:
  | s=stmt EOF { s }

prog:
  | p=list(decl) EOF  { p }

decl:
  | GLOBAL name=IDENT EQ init=gexp SEMI
    { Gvdecl (loc $startpos $endpos { name; init }) }
  | frtyp=ret_ty fname=IDENT LPAREN args=arglist RPAREN body=block
    { Gfdecl (loc $startpos $endpos { frtyp; fname; args; body }) }

arglist:
  | l=separated_list(COMMA, pair(ty,IDENT)) { l }

ty:
  | TINT   { TInt }
  | TBOOL  { TBool}
  | r=rtyp { TRef r } 

%inline ret_ty:
  | TVOID  { RetVoid }
  | t=ty   { RetVal t }

%inline rtyp:
  | TSTRING { RString }
  | t=ty LBRACKET RBRACKET { RArray t }

%inline bop:
  | PLUS   { Add }
  | DASH   { Sub }
  | STAR   { Mul }
  | EQEQ   { Eq }
  /* Compare */
  | NEQ { Neq }
  | LAND { And }
  | LOR { Or }
  | LESS { Lt }
  | LESSEQ { Lte }
  | GREAT { Gt }
  | GREATEQ { Gte }
  /* Shifts */
  | LLSHIFT { Shl }
  | LRSHIFT { Shr }
  | ARSHIFT { Sar }
  /* Bin ops */
  | BOR { IOr }
  | BAND { IAnd }

%inline uop:
  | DASH  { Neg }
  | BANG  { Lognot }
  | TILDE { Bitnot }

gexp:
  | t=rtyp NULL  { loc $startpos $endpos @@ CNull t }
  | i=INT      { loc $startpos $endpos @@ CInt i }
  /* These have to be global expressions aswell */
  /* Bool expressions */
  | TRUE                { loc $startpos $endpos @@ CBool true }
  | FALSE               { loc $startpos $endpos @@ CBool false }
  | NEW t=ty LBRACKET? e1=exp RBRACKET 
                        {loc $startpos $endpos @@ NewArr (t,e1)}
  | s=STRING            { loc $startpos $endpos @@ CStr s  }

lhs:  
  | id=IDENT            { loc $startpos $endpos @@ Id id }
  | e=exp LBRACKET i=exp RBRACKET
                        { loc $startpos $endpos @@ Index (e, i) }

exp:
  | id=IDENT            { loc $startpos $endpos @@ Id id }
  | i=INT               { loc $startpos $endpos @@ CInt i }
  | s=STRING            { loc $startpos $endpos @@ CStr s  }
  | t=rtyp NULL         { loc $startpos $endpos @@ CNull t }
  /* Bool expressions */
  | TRUE                { loc $startpos $endpos @@ CBool true }
  | FALSE               { loc $startpos $endpos @@ CBool false }
  
  | e=exp LBRACKET i=exp RBRACKET
                        { loc $startpos $endpos @@ Index (e, i) }


  | e=exp LPAREN es=separated_list(COMMA, exp) RPAREN
                        { loc $startpos $endpos @@ Call (e,es) }


  /* Array */
  | e=ty LPAREN es=ARRAY RPAREN    { loc $startpos $endpos @@ CArr (e, es) } 
  | NEW t=ty LBRACKET? e1=exp RBRACKET {loc $startpos $endpos @@ NewArr (t,e1)}

  | e1=exp b=bop e2=exp { loc $startpos $endpos @@ Bop (b, e1, e2) }
  | u=uop e=exp         { loc $startpos $endpos @@ Uop (u, e) }
  | LPAREN e=exp RPAREN { e } 
 

vdecl:
  | VAR id=IDENT EQ init=exp { (id, init) }

stmt: 
  | d=vdecl SEMI        { loc $startpos $endpos @@ Decl(d) }
  | p=lhs EQ e=exp SEMI { loc $startpos $endpos @@ Assn(p,e) }
  | e=exp LPAREN es=separated_list(COMMA, exp) RPAREN SEMI
                        { loc $startpos $endpos @@ SCall (e, es) }
  | ifs=if_stmt         { ifs }
  | RETURN SEMI         { loc $startpos $endpos @@ Ret(None) }
  | RETURN e=exp SEMI   { loc $startpos $endpos @@ Ret(Some e) }
  | WHILE LPAREN e=exp RPAREN b=block  
                        { loc $startpos $endpos @@ While(e, b) } 
  /* for statement */
  | FOR 
    LPAREN
    d=separated_list(COMMA, vdecl)
    SEMI e=option(exp) SEMI s=option(stmt)
    RPAREN
    b = block
    { loc $startpos $endpos @@ For(d, e, s, b) }

block:
  | LBRACE stmts=list(stmt) RBRACE { stmts }

if_stmt:
  | IF LPAREN e=exp RPAREN b1=block b2=else_stmt
    { loc $startpos $endpos @@ If(e,b1,b2) }

else_stmt:
  | (* empty *)       { [] }
  | ELSE b=block      { b }
  | ELSE ifs=if_stmt  { [ ifs ] }

