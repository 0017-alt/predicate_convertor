
(* The type of tokens. *)

type token = 
  | SEMI
  | RPAR
  | OR
  | NOT
  | LPAR
  | LEQ
  | INT of (string)
  | ID of (string)
  | GEQ
  | FORALL
  | EXISTS
  | EQ
  | DOT
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val toplevel: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Syntax.command)
