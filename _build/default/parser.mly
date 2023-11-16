%{
    open Syntax
%}

%token <string> INT
%token <string> ID
%token AND OR
%token LPAR RPAR
%token NOT
%token DOT
%token FORALL EXISTS LEQ GEQ EQ
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
    | GEQ num rel DOT con { EGeq($2,$3,$5) }
    | LEQ num rel DOT con { ELeq($2,$3,$5) }
    | EQ num rel DOT con { EEq($2,$3,$5) }
;

con:
    | LPAR con RPAR AND con { EAndPar($2,$5) }
    | LPAR con RPAR OR con { EOrPar($2,$5) }
    | LPAR con RPAR { EPar($2) }
    | con AND con { EAnd($1,$3) }
    | con OR con { EOr($1,$3) }
    | NOT con { ENot($2) }
    | rel { EConst($1) }
;

rel:
    | ID {$1}
;

num:
    | INT {$1}
;