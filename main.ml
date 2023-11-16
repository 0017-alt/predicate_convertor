open Eval

let rec read_eval_print () =
  print_string "input : ";
  flush stdout;
  let cmd = Parser.toplevel Lexer.main (Lexing.from_channel stdin) in
  let (env,con) = eval_command cmd in
  print_string "output: ";
  print_string env;
  print_string con;
  print_string ")}\n";
  read_eval_print ()

let _ = try read_eval_print () with
  | EvalErr -> print_string "Evaluation Error\n"; read_eval_print ()
  | Lexer.EOF -> print_string "\nBye!\n";
