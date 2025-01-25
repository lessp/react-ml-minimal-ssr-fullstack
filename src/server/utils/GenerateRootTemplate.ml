let () =
  let template = In_channel.with_open_bin Sys.argv.(1) In_channel.input_all in

  (* Split only the root div, preserving everything else *)
  let parts = Str.split (Str.regexp "<div id=\"root\"></div>") template in

  (* Generate a template function that preserves the head and body structure *)
  Printf.printf
    "let render content = {|\n%s<div id=\"root\">|} ^ content ^ {|</div>%s|}\n"
    (List.nth parts 0)
    (List.nth parts 1)
;;
