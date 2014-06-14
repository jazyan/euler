let rec largest_prime_fac (num : int) (i : int) : int =
    match i with
    | 1 -> largest_prime_fac num 2
    | x -> if x*x > num then num
           else if (num mod x = 0) then largest_prime_fac (num/x) 1  
           else largest_prime_fac num (x+1)
;;

print_int (largest_prime_fac 600851475143 1)
