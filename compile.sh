ocamlfind ocamlc -o lib-full.byte -g -linkpkg -package js_of_ocaml.ppx,js_of_ocaml lib.ml

ocamlfind stdlib/expunge lib-full.byte lib.byte Lib

js_of_ocaml --pretty --dynlink lib.byte

ocamlfind ocamlc -g -c -package js_of_ocaml.ppx plugin.ml

js_of_ocaml --pretty plugin.cmo

