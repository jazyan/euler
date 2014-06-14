let three (x: int) : bool = 
    x mod 3 = 0;;

let five (x: int) : bool =
    x mod 5 = 0;;

let rec sum (a: int) : int = 
    match a with
    | 0 -> 0
    | _ -> if (five a || three a) then (a + sum(a-1)) else sum(a-1)
;;

print_int (sum 999);; 
