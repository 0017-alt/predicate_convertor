{
    exception EOF
}

let digit = ['0'-'9']
let space = ' ' | '\t' | '\r' | '\n'
let alpha = ['a'-'z' 'A'-'Z' '_']
let ident = alpha (alpha | digit)*

rule main = parse
| space+        { main lexbuf }
| "∀"           { Parser.FORALL }
| "∃"           { Parser.EXISTS }
| "."           { Parser.DOT }
| "∧"           { Parser.AND }
| "∨"           { Parser.OR }
| "¬"           { Parser.NOT }
| ";"           { Parser.SEMI }
| "("           { Parser.LPAR }
| ")"           { Parser.RPAR }
| "≤"           { Parser.GEQ }
| "≥"           { Parser.LEQ }
| "="           { Parser.EQ }
| eof           { raise EOF }
| digit+ as n   { Parser.INT n }
| ident  as id  { Parser.ID id }
| _             { failwith ("Unknown Token: " ^ Lexing.lexeme lexbuf) }
