exception EvalErr

type env = string
type relation = string
and expr =
  | EForall of relation * expr
  | EExists of relation * expr
  | EAndPar of expr * expr
  | EOrPar of expr * expr
  | EAnd of string * expr
  | EOr of string * expr
  | ENot of string
  | EConst of string 
and command =
  | CExp of expr
