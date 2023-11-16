exception EvalErr

type env = string
type relation = string
and expr =
  | EForall of relation * expr
  | EExists of relation * expr
  | EAndPar of expr * expr
  | EOrPar of expr * expr
  | EPar of expr
  | EAnd of expr * expr
  | EOr of expr * expr
  | ENot of expr
  | EConst of string 
and command =
  | CExp of expr
