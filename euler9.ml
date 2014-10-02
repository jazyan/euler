let rec find_triple (i : int) (j : int) : int =
    match j with
    | 14 -> if i < 32 then (find_triple (i + 1) 0) else 0
    | k -> if (k*k + i*i) + 2 * k * i + (i*i - k*k) = 1000 then ((k*k + i*i) * 2 * k * i * (i*i - k*k))
            else find_triple i (k + 1)
;;

print_int(find_triple 0 0);;



