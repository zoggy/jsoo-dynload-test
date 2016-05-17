

module M =
  struct
    let square x = x * x
    let cube x = x * x * x
    let id x = x
    let funs = ref [ id ; square]

  end

let register f = M.funs := !M.funs @ [f]

let run () =
  let l = List.map (fun f -> string_of_int (f 2)) !M.funs in
  let str = String.concat ", " l in
  Firebug.console##log (Js.string str)


