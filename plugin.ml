
let f x = x * x * x * x;;

Lib.register Lib.M.cube;;
Lib.register f ;;

Lib.run();;