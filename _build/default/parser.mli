
(* The type of tokens. *)

type token = 
  | SEMI
  | RPAR
  | OR
  | NOT
  | LPAR
  | INT of (string)
  | ID of (string)
  | FORALL
  | EXISTS
  | DOT
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val toplevel: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Syntax.command)
