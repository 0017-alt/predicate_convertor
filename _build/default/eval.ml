open Syntax
exception EvalErr

let rec not_conv con expr =
  match expr with
  | EAndPar (e1,e2) ->
    let con' = not_conv con e1 in
    not_conv (con^"("^con'^") ∨ ") e2
  | EOrPar (e1,e2) ->
    let con' = not_conv con e1 in
    not_conv (con^"("^con'^") ∧ ") e2
  | EPar e ->
    let con' = not_conv con e in
    "("^con^con'^")"
  | EAnd (e1,e2) ->
    let con' = not_conv con e1 in
    not_conv (con^con'^" ∨ ") e2
  | EOr (e1,e2) ->
    let con' = not_conv con e1 in
    not_conv (con^con'^" ∧ ") e2
  | EConst e ->
    con^"(b ∉ "^e^")"
  | _ -> raise EvalErr

let rec eval_expr env con expr =
  match expr with
  | EForall (p,c) ->
    let env' = env^"{ a | ∀b.( (a,b) ∈ "^p^" -> (" in
    let (_,con') = eval_expr env' con c in
    (env', con'^"))}")
  | EExists (p,c) ->
    let env' = env^"{ a | ∃b.( (a,b) ∈ "^p^" ∧ (" in
    let (_,con') = eval_expr env' con c in
    (env', con'^"))}")
  | EGeq (n,p,c) ->
    let env' = env^"{ a | #{b | (a,b) ∈ "^p^" ∧ (" in
    let (_,con') = eval_expr env' con c in
    (env', con'^")} ≤ "^n^"}")
  | ELeq (n,p,c) ->
    let env' = env^"{ a | #{b | (a,b) ∈ "^p^" ∧ (" in
    let (_,con') = eval_expr env' con c in
    (env', con'^")} ≥ "^n^"}")
  | EEq (n,p,c) ->
    let env' = env^"{ a | #{b | (a,b) ∈ "^p^" ∧ (" in
    let (_,con') = eval_expr env' con c in
    (env', con'^")} = "^n^"}")
  | EAndPar (e1,e2) ->
    let (_,con') = eval_expr env con e1 in
    eval_expr env (con^"("^con'^") ∧ ") e2
  | EOrPar (e1,e2) ->
    let (_,con') = eval_expr env con e1 in
    eval_expr env (con^"("^con'^") ∨ ") e2
  | EPar e ->
    let (_,con') = eval_expr env con e in
    (env, con^con')
  | EAnd (e1,e2) ->
    let (_,con') = eval_expr env con e1 in
    eval_expr env (con^con'^" ∧ ") e2
  | EOr (e1,e2) ->
    let (_,con') = eval_expr env con e1 in
    eval_expr env (con^con'^" ∨ ") e2
  | ENot e ->
    let con' = not_conv "" e in
    (env, (con^"(b ∈ T) ∧ "^con'))
  | EConst e ->
    (env, con^"(b ∈ "^e^")")

let eval_command cmd =
  match cmd with
  | CExp expr -> eval_expr "" "" expr