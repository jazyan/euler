let rec fib (a : int) : int =
    match a with
    | 1 -> 1
    | 2 -> 2
    | _ -> fib(a-1) + fib(a-2) ;;

let rec find_fib_n (bound : int) (n : int) : int =
    if (fib n) >= bound 
        then (n-1) 
    else 
        find_fib_n bound (n+1);;

let rec sum_evens (bound : int) = 
    match bound with
    | 0 -> 0
    | _ -> if (fib bound) mod 2 = 0 
                then fib bound + (sum_evens (bound-1)) 
                else sum_evens (bound-1)
;;

print_int (sum_evens (find_fib_n 4000000 1));;
