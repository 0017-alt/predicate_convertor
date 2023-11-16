
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = 
    | SEMI
    | RPAR
    | OR
    | NOT
    | LPAR
    | LEQ
    | INT of (
# 5 "parser.mly"
       (string)
# 21 "parser.ml"
  )
    | ID of (
# 6 "parser.mly"
       (string)
# 26 "parser.ml"
  )
    | GEQ
    | FORALL
    | EXISTS
    | EQ
    | DOT
    | AND
  
end

include MenhirBasics

# 1 "parser.mly"
  
    open Syntax

# 43 "parser.ml"

type ('s, 'r) _menhir_state = 
  | MenhirState01 : ('s, _menhir_box_toplevel) _menhir_state
    (** State 01.
        Stack shape : .
        Start symbol: toplevel. *)

  | MenhirState03 : (('s, _menhir_box_toplevel) _menhir_cell1_num, _menhir_box_toplevel) _menhir_state
    (** State 03.
        Stack shape : num.
        Start symbol: toplevel. *)

  | MenhirState06 : ((('s, _menhir_box_toplevel) _menhir_cell1_num, _menhir_box_toplevel) _menhir_cell1_rel, _menhir_box_toplevel) _menhir_state
    (** State 06.
        Stack shape : num rel.
        Start symbol: toplevel. *)

  | MenhirState07 : (('s, _menhir_box_toplevel) _menhir_cell1_NOT, _menhir_box_toplevel) _menhir_state
    (** State 07.
        Stack shape : NOT.
        Start symbol: toplevel. *)

  | MenhirState08 : (('s, _menhir_box_toplevel) _menhir_cell1_LPAR, _menhir_box_toplevel) _menhir_state
    (** State 08.
        Stack shape : LPAR.
        Start symbol: toplevel. *)

  | MenhirState12 : ((('s, _menhir_box_toplevel) _menhir_cell1_LPAR, _menhir_box_toplevel) _menhir_cell1_con, _menhir_box_toplevel) _menhir_state
    (** State 12.
        Stack shape : LPAR con.
        Start symbol: toplevel. *)

  | MenhirState14 : (('s, _menhir_box_toplevel) _menhir_cell1_con, _menhir_box_toplevel) _menhir_state
    (** State 14.
        Stack shape : con.
        Start symbol: toplevel. *)

  | MenhirState16 : (('s, _menhir_box_toplevel) _menhir_cell1_con, _menhir_box_toplevel) _menhir_state
    (** State 16.
        Stack shape : con.
        Start symbol: toplevel. *)

  | MenhirState18 : ((('s, _menhir_box_toplevel) _menhir_cell1_LPAR, _menhir_box_toplevel) _menhir_cell1_con, _menhir_box_toplevel) _menhir_state
    (** State 18.
        Stack shape : LPAR con.
        Start symbol: toplevel. *)

  | MenhirState22 : ('s, _menhir_box_toplevel) _menhir_state
    (** State 22.
        Stack shape : .
        Start symbol: toplevel. *)

  | MenhirState23 : (('s, _menhir_box_toplevel) _menhir_cell1_num, _menhir_box_toplevel) _menhir_state
    (** State 23.
        Stack shape : num.
        Start symbol: toplevel. *)

  | MenhirState25 : ((('s, _menhir_box_toplevel) _menhir_cell1_num, _menhir_box_toplevel) _menhir_cell1_rel, _menhir_box_toplevel) _menhir_state
    (** State 25.
        Stack shape : num rel.
        Start symbol: toplevel. *)

  | MenhirState27 : ('s, _menhir_box_toplevel) _menhir_state
    (** State 27.
        Stack shape : .
        Start symbol: toplevel. *)

  | MenhirState29 : (('s, _menhir_box_toplevel) _menhir_cell1_rel, _menhir_box_toplevel) _menhir_state
    (** State 29.
        Stack shape : rel.
        Start symbol: toplevel. *)

  | MenhirState31 : ('s, _menhir_box_toplevel) _menhir_state
    (** State 31.
        Stack shape : .
        Start symbol: toplevel. *)

  | MenhirState33 : (('s, _menhir_box_toplevel) _menhir_cell1_rel, _menhir_box_toplevel) _menhir_state
    (** State 33.
        Stack shape : rel.
        Start symbol: toplevel. *)

  | MenhirState35 : ('s, _menhir_box_toplevel) _menhir_state
    (** State 35.
        Stack shape : .
        Start symbol: toplevel. *)

  | MenhirState36 : (('s, _menhir_box_toplevel) _menhir_cell1_num, _menhir_box_toplevel) _menhir_state
    (** State 36.
        Stack shape : num.
        Start symbol: toplevel. *)

  | MenhirState38 : ((('s, _menhir_box_toplevel) _menhir_cell1_num, _menhir_box_toplevel) _menhir_cell1_rel, _menhir_box_toplevel) _menhir_state
    (** State 38.
        Stack shape : num rel.
        Start symbol: toplevel. *)


and ('s, 'r) _menhir_cell1_con = 
  | MenhirCell1_con of 's * ('s, 'r) _menhir_state * (Syntax.expr)

and ('s, 'r) _menhir_cell1_num = 
  | MenhirCell1_num of 's * ('s, 'r) _menhir_state * (string)

and ('s, 'r) _menhir_cell1_rel = 
  | MenhirCell1_rel of 's * ('s, 'r) _menhir_state * (string)

and ('s, 'r) _menhir_cell1_LPAR = 
  | MenhirCell1_LPAR of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_NOT = 
  | MenhirCell1_NOT of 's * ('s, 'r) _menhir_state

and _menhir_box_toplevel = 
  | MenhirBox_toplevel of (Syntax.command) [@@unboxed]

let _menhir_action_01 =
  fun _2 _5 ->
    (
# 31 "parser.mly"
                            ( EAndPar(_2,_5) )
# 165 "parser.ml"
     : (Syntax.expr))

let _menhir_action_02 =
  fun _2 _5 ->
    (
# 32 "parser.mly"
                           ( EOrPar(_2,_5) )
# 173 "parser.ml"
     : (Syntax.expr))

let _menhir_action_03 =
  fun _2 ->
    (
# 33 "parser.mly"
                    ( EPar(_2) )
# 181 "parser.ml"
     : (Syntax.expr))

let _menhir_action_04 =
  fun _1 _3 ->
    (
# 34 "parser.mly"
                  ( EAnd(_1,_3) )
# 189 "parser.ml"
     : (Syntax.expr))

let _menhir_action_05 =
  fun _1 _3 ->
    (
# 35 "parser.mly"
                 ( EOr(_1,_3) )
# 197 "parser.ml"
     : (Syntax.expr))

let _menhir_action_06 =
  fun _2 ->
    (
# 36 "parser.mly"
              ( ENot(_2) )
# 205 "parser.ml"
     : (Syntax.expr))

let _menhir_action_07 =
  fun _1 ->
    (
# 37 "parser.mly"
          ( EConst(_1) )
# 213 "parser.ml"
     : (Syntax.expr))

let _menhir_action_08 =
  fun _2 _4 ->
    (
# 23 "parser.mly"
                         ( EForall(_2,_4) )
# 221 "parser.ml"
     : (Syntax.expr))

let _menhir_action_09 =
  fun _2 _4 ->
    (
# 24 "parser.mly"
                         ( EExists(_2,_4) )
# 229 "parser.ml"
     : (Syntax.expr))

let _menhir_action_10 =
  fun _2 _3 _5 ->
    (
# 25 "parser.mly"
                          ( EGeq(_2,_3,_5) )
# 237 "parser.ml"
     : (Syntax.expr))

let _menhir_action_11 =
  fun _2 _3 _5 ->
    (
# 26 "parser.mly"
                          ( ELeq(_2,_3,_5) )
# 245 "parser.ml"
     : (Syntax.expr))

let _menhir_action_12 =
  fun _2 _3 _5 ->
    (
# 27 "parser.mly"
                         ( EEq(_2,_3,_5) )
# 253 "parser.ml"
     : (Syntax.expr))

let _menhir_action_13 =
  fun _1 ->
    (
# 45 "parser.mly"
          (_1)
# 261 "parser.ml"
     : (string))

let _menhir_action_14 =
  fun _1 ->
    (
# 41 "parser.mly"
         (_1)
# 269 "parser.ml"
     : (string))

let _menhir_action_15 =
  fun _1 ->
    (
# 19 "parser.mly"
               ( CExp(_1) )
# 277 "parser.ml"
     : (Syntax.command))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | AND ->
        "AND"
    | DOT ->
        "DOT"
    | EQ ->
        "EQ"
    | EXISTS ->
        "EXISTS"
    | FORALL ->
        "FORALL"
    | GEQ ->
        "GEQ"
    | ID _ ->
        "ID"
    | INT _ ->
        "INT"
    | LEQ ->
        "LEQ"
    | LPAR ->
        "LPAR"
    | NOT ->
        "NOT"
    | OR ->
        "OR"
    | RPAR ->
        "RPAR"
    | SEMI ->
        "SEMI"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37"]
  
  let _menhir_goto_exp : type  ttv_stack. ttv_stack -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _v ->
      let _1 = _v in
      let _v = _menhir_action_15 _1 in
      MenhirBox_toplevel _v
  
  let rec _menhir_run_04 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_toplevel) _menhir_state -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _1 = _v in
      let _v = _menhir_action_14 _1 in
      _menhir_goto_rel _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_rel : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_toplevel) _menhir_state -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState36 ->
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState31 ->
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState27 ->
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState23 ->
          _menhir_run_24 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState38 ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState33 ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState29 ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState25 ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState06 ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState07 ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState18 ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState16 ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState14 ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState12 ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState08 ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState03 ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_37 : type  ttv_stack. ((ttv_stack, _menhir_box_toplevel) _menhir_cell1_num as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_toplevel) _menhir_state -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_rel (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | DOT ->
          let _menhir_s = MenhirState38 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | NOT ->
              _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAR ->
              _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | ID _v ->
              _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_07 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_toplevel) _menhir_state -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_NOT (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState07 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | NOT ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_08 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_toplevel) _menhir_state -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState08 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | NOT ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_32 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_toplevel) _menhir_state -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_rel (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | DOT ->
          let _menhir_s = MenhirState33 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | NOT ->
              _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAR ->
              _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | ID _v ->
              _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_28 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_toplevel) _menhir_state -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_rel (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | DOT ->
          let _menhir_s = MenhirState29 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | NOT ->
              _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAR ->
              _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | ID _v ->
              _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_24 : type  ttv_stack. ((ttv_stack, _menhir_box_toplevel) _menhir_cell1_num as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_toplevel) _menhir_state -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_rel (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | DOT ->
          let _menhir_s = MenhirState25 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | NOT ->
              _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAR ->
              _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | ID _v ->
              _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_09 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_toplevel) _menhir_state -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _1 = _v in
      let _v = _menhir_action_07 _1 in
      _menhir_goto_con _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_con : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_toplevel) _menhir_state -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState38 ->
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState33 ->
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState29 ->
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState25 ->
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState06 ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState07 ->
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState18 ->
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState16 ->
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState14 ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState12 ->
          _menhir_run_13 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState08 ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_39 : type  ttv_stack. (((ttv_stack, _menhir_box_toplevel) _menhir_cell1_num, _menhir_box_toplevel) _menhir_cell1_rel as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_toplevel) _menhir_state -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | OR ->
          let _menhir_stack = MenhirCell1_con (_menhir_stack, _menhir_s, _v) in
          _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_con (_menhir_stack, _menhir_s, _v) in
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMI ->
          let MenhirCell1_rel (_menhir_stack, _, _3) = _menhir_stack in
          let MenhirCell1_num (_menhir_stack, _, _2) = _menhir_stack in
          let _5 = _v in
          let _v = _menhir_action_12 _2 _3 _5 in
          _menhir_goto_exp _menhir_stack _v
      | _ ->
          _eRR ()
  
  and _menhir_run_14 : type  ttv_stack. (ttv_stack, _menhir_box_toplevel) _menhir_cell1_con -> _ -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState14 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | NOT ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_16 : type  ttv_stack. (ttv_stack, _menhir_box_toplevel) _menhir_cell1_con -> _ -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState16 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | NOT ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_34 : type  ttv_stack. ((ttv_stack, _menhir_box_toplevel) _menhir_cell1_rel as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_toplevel) _menhir_state -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | OR ->
          let _menhir_stack = MenhirCell1_con (_menhir_stack, _menhir_s, _v) in
          _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_con (_menhir_stack, _menhir_s, _v) in
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMI ->
          let MenhirCell1_rel (_menhir_stack, _, _2) = _menhir_stack in
          let _4 = _v in
          let _v = _menhir_action_09 _2 _4 in
          _menhir_goto_exp _menhir_stack _v
      | _ ->
          _eRR ()
  
  and _menhir_run_30 : type  ttv_stack. ((ttv_stack, _menhir_box_toplevel) _menhir_cell1_rel as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_toplevel) _menhir_state -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | OR ->
          let _menhir_stack = MenhirCell1_con (_menhir_stack, _menhir_s, _v) in
          _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_con (_menhir_stack, _menhir_s, _v) in
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMI ->
          let MenhirCell1_rel (_menhir_stack, _, _2) = _menhir_stack in
          let _4 = _v in
          let _v = _menhir_action_08 _2 _4 in
          _menhir_goto_exp _menhir_stack _v
      | _ ->
          _eRR ()
  
  and _menhir_run_26 : type  ttv_stack. (((ttv_stack, _menhir_box_toplevel) _menhir_cell1_num, _menhir_box_toplevel) _menhir_cell1_rel as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_toplevel) _menhir_state -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | OR ->
          let _menhir_stack = MenhirCell1_con (_menhir_stack, _menhir_s, _v) in
          _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_con (_menhir_stack, _menhir_s, _v) in
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMI ->
          let MenhirCell1_rel (_menhir_stack, _, _3) = _menhir_stack in
          let MenhirCell1_num (_menhir_stack, _, _2) = _menhir_stack in
          let _5 = _v in
          let _v = _menhir_action_10 _2 _3 _5 in
          _menhir_goto_exp _menhir_stack _v
      | _ ->
          _eRR ()
  
  and _menhir_run_21 : type  ttv_stack. (((ttv_stack, _menhir_box_toplevel) _menhir_cell1_num, _menhir_box_toplevel) _menhir_cell1_rel as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_toplevel) _menhir_state -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | OR ->
          let _menhir_stack = MenhirCell1_con (_menhir_stack, _menhir_s, _v) in
          _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_con (_menhir_stack, _menhir_s, _v) in
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMI ->
          let MenhirCell1_rel (_menhir_stack, _, _3) = _menhir_stack in
          let MenhirCell1_num (_menhir_stack, _, _2) = _menhir_stack in
          let _5 = _v in
          let _v = _menhir_action_11 _2 _3 _5 in
          _menhir_goto_exp _menhir_stack _v
      | _ ->
          _eRR ()
  
  and _menhir_run_20 : type  ttv_stack. ((ttv_stack, _menhir_box_toplevel) _menhir_cell1_NOT as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_toplevel) _menhir_state -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | OR ->
          let _menhir_stack = MenhirCell1_con (_menhir_stack, _menhir_s, _v) in
          _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_con (_menhir_stack, _menhir_s, _v) in
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAR | SEMI ->
          let MenhirCell1_NOT (_menhir_stack, _menhir_s) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_06 _2 in
          _menhir_goto_con _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_19 : type  ttv_stack. (((ttv_stack, _menhir_box_toplevel) _menhir_cell1_LPAR, _menhir_box_toplevel) _menhir_cell1_con as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_toplevel) _menhir_state -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | OR ->
          let _menhir_stack = MenhirCell1_con (_menhir_stack, _menhir_s, _v) in
          _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_con (_menhir_stack, _menhir_s, _v) in
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAR | SEMI ->
          let MenhirCell1_con (_menhir_stack, _, _2) = _menhir_stack in
          let MenhirCell1_LPAR (_menhir_stack, _menhir_s) = _menhir_stack in
          let _5 = _v in
          let _v = _menhir_action_01 _2 _5 in
          _menhir_goto_con _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_17 : type  ttv_stack. ((ttv_stack, _menhir_box_toplevel) _menhir_cell1_con as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_toplevel) _menhir_state -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | OR ->
          let _menhir_stack = MenhirCell1_con (_menhir_stack, _menhir_s, _v) in
          _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_con (_menhir_stack, _menhir_s, _v) in
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAR | SEMI ->
          let MenhirCell1_con (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_04 _1 _3 in
          _menhir_goto_con _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_15 : type  ttv_stack. ((ttv_stack, _menhir_box_toplevel) _menhir_cell1_con as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_toplevel) _menhir_state -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | OR ->
          let _menhir_stack = MenhirCell1_con (_menhir_stack, _menhir_s, _v) in
          _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_con (_menhir_stack, _menhir_s, _v) in
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAR | SEMI ->
          let MenhirCell1_con (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_05 _1 _3 in
          _menhir_goto_con _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_13 : type  ttv_stack. (((ttv_stack, _menhir_box_toplevel) _menhir_cell1_LPAR, _menhir_box_toplevel) _menhir_cell1_con as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_toplevel) _menhir_state -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | OR ->
          let _menhir_stack = MenhirCell1_con (_menhir_stack, _menhir_s, _v) in
          _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_con (_menhir_stack, _menhir_s, _v) in
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAR | SEMI ->
          let MenhirCell1_con (_menhir_stack, _, _2) = _menhir_stack in
          let MenhirCell1_LPAR (_menhir_stack, _menhir_s) = _menhir_stack in
          let _5 = _v in
          let _v = _menhir_action_02 _2 _5 in
          _menhir_goto_con _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_10 : type  ttv_stack. ((ttv_stack, _menhir_box_toplevel) _menhir_cell1_LPAR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_toplevel) _menhir_state -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | OR ->
              let _menhir_stack = MenhirCell1_con (_menhir_stack, _menhir_s, _v) in
              let _menhir_s = MenhirState12 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | NOT ->
                  _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | LPAR ->
                  _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | ID _v ->
                  _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | AND ->
              let _menhir_stack = MenhirCell1_con (_menhir_stack, _menhir_s, _v) in
              let _menhir_s = MenhirState18 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | NOT ->
                  _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | LPAR ->
                  _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | ID _v ->
                  _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | RPAR | SEMI ->
              let MenhirCell1_LPAR (_menhir_stack, _menhir_s) = _menhir_stack in
              let _2 = _v in
              let _v = _menhir_action_03 _2 in
              _menhir_goto_con _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | OR ->
          let _menhir_stack = MenhirCell1_con (_menhir_stack, _menhir_s, _v) in
          _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_con (_menhir_stack, _menhir_s, _v) in
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_05 : type  ttv_stack. ((ttv_stack, _menhir_box_toplevel) _menhir_cell1_num as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_toplevel) _menhir_state -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_rel (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | DOT ->
          let _menhir_s = MenhirState06 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | NOT ->
              _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAR ->
              _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | ID _v ->
              _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  let _menhir_run_36 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_toplevel) _menhir_state -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_num (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ID _v_0 ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState36
      | _ ->
          _eRR ()
  
  let _menhir_run_23 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_toplevel) _menhir_state -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_num (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ID _v_0 ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState23
      | _ ->
          _eRR ()
  
  let _menhir_run_03 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_toplevel) _menhir_state -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_num (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ID _v_0 ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState03
      | _ ->
          _eRR ()
  
  let _menhir_goto_num : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_toplevel) _menhir_state -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState35 ->
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState22 ->
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState01 ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  let _menhir_run_02 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_toplevel) _menhir_state -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _1 = _v in
      let _v = _menhir_action_13 _1 in
      _menhir_goto_num _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  let _menhir_run_00 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEQ ->
          let _menhir_s = MenhirState01 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | INT _v ->
              _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | GEQ ->
          let _menhir_s = MenhirState22 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | INT _v ->
              _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | FORALL ->
          let _menhir_s = MenhirState27 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | ID _v ->
              _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | EXISTS ->
          let _menhir_s = MenhirState31 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | ID _v ->
              _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | EQ ->
          let _menhir_s = MenhirState35 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | INT _v ->
              _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
end

let toplevel =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_toplevel v = _menhir_run_00 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
