let rec sum_square (x : int) (s : int) : int =
    match x with
    | 101 -> s
    | i -> sum_square (i+1) (s + i*i)
;;

let rec square_sum (x : int) (s : int) : int =
    match x with
    | 101 -> s*s
    | i -> square_sum (i+1) (s+i)
;;

print_int ((square_sum 1 0) - (sum_square 1 0));;
