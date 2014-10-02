(* First solution *)
let rec range (i: int) (j: int) (li: int list) : int list= 
    if i < j then li else range (i-1) j (i::li);;

let rec filter (to_filter : int list) (sum : int) : int =
    match to_filter with
    | [] -> sum
    | hd::tl -> let new_list = List.filter (fun x -> x mod hd <> 0) tl in
                filter (new_list) (sum + hd);;

(* Second solution *)
let rec isprime (i: int) (l: int list) : bool =
    match l with
    | [] -> true
    | hd::tl -> if float_of_int hd > sqrt(float_of_int i) then true 
                else if i mod hd = 0 then false
                else isprime i tl;;


let rec prime_list (l: int list) (sum : int) (i : int) : int =
    match i with
    | 2000001 -> sum
    | x -> if isprime x l then prime_list (l@[x]) (sum + x) (i + 2)
            else prime_list l sum (i+2);;

print_int (prime_list [3] 5 5)
