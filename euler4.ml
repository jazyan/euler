let rec int_to_list (a : int) = 
    match a with
    | 0 -> []
    | x -> (x mod 10)::(int_to_list(x/10))

let is_pali a : bool = 
    a = List.rev a

let rec largest_pali (u1 : int) (u2 : int) (max : int) : int =
    match (u1, u2, max) with
    | (999, 999, m) -> m
    | (a, 999, m) -> if is_pali(int_to_list(a*999)) && (a*999 > m) 
                        then largest_pali (a+1) 100 (a*999)
                     else largest_pali (a+1) 100 m
    | (a, b, m) -> if is_pali(int_to_list(a*b)) && (a*b > m) 
                        then largest_pali a (b+1) (a*b)
                   else largest_pali a (b+1) m
;;

print_int (largest_pali 100 100 1);;
