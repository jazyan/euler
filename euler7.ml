let rec is_prime (num : int) (i : int) : bool =
    match i with
    | 1 -> is_prime num 2 
    | x -> if x*x > num then true
           else if num mod x = 0 then false
           else is_prime num (x+1)
;;

let rec nth_prime (num : int) (i : int) : int =
    match i with
    | 10002 -> num-2
    | x -> if is_prime num 1 then nth_prime (num+2) (x+1)
           else nth_prime (num+2) x
;;

print_int (nth_prime 3 2) ;;

