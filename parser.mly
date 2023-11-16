%{
    open Syntax
%}

%token <string> INT
%token <string> ID
%token AND OR
%token LPAR RPAR
%token NOT
%token DOT
%token FORALL EXISTS
%token SEMI

%start toplevel
%type <Syntax.command> toplevel
%%

toplevel:
    | exp SEMI { CExp($1) }
;

exp:
    | FORALL rel DOT con { EForall($2,$4) }
    | EXISTS rel DOT con { EExists($2,$4) }
;

con:
    | LPAR con RPAR AND con { EAndPar($2,$5) }
    | LPAR con RPAR OR con { EOrPar($2,$5) }
    | rel AND con { EAnd($1,$3) }
    | rel OR con { EOr($1,$3) }
    | NOT rel { ENot($2) }
    | rel { EConst($1) }
;

rel:
    | ID {$1}
;