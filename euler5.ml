let rec totwenty (x : int) (y : int) : int =
    match (x, y) with
    | (x, 20) -> x
    | (x, y) -> if x mod y = 0 then totwenty x (y+1) 
                else totwenty (x+2) 3
;;

print_int (totwenty 116396280 3);;
    
