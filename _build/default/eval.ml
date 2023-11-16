open Syntax
exception EvalErr

let rec eval_expr env con expr =
  match expr with
  | EForall (p,c) ->
    let env' = env^"{ a | ∀b.( (a,b) ∈ "^p^" -> " in
    eval_expr env' con c
  | EExists (p,c) ->
    let env' = env^"{ a | ∃b.( (a,b) ∈ "^p^" -> " in
    eval_expr env' con c
  | EAndPar (e1,e2) ->
    let (_,con') = eval_expr env con e1 in
    eval_expr env (con^"("^con'^") ∧ ") e2
  | EOrPar (e1,e2) ->
    let (_,con') = eval_expr env con e1 in
    eval_expr env (con^"("^con'^") ∨ ") e2
  | EAnd (e1,e2) ->
    eval_expr env (con^"(b ∈ "^e1^") ∧ ") e2
  | EOr (e1,e2) ->
    eval_expr env (con^"(b ∈ "^e1^") ∨ ") e2
  | ENot e ->
    (env, (con^"(b ∈ T) ∧ (b ∉ "^e^")"))
  | EConst e ->
    (env, con^"(b ∈ "^e^")")

let eval_command cmd =
  match cmd with
  | CExp expr -> eval_expr "" "" expr