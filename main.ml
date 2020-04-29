open Amodule;;
print_string "Hello, world\n";;
print_int 13
let average a b = 
    let sum = a +. b in
    sum /. 2.0
let rec range a b =
    if a > b then []
    else a :: range (a + 1) b

let positive_sum a b =
    let a = max a 0
    and b = max b 0 in
    a + b
let give_me_a_three x = Printf.sprintf "Hey %d" x
let a = give_me_a_three 3

let my_ref = ref 0;;

print_int !my_ref;;
say_hello_a ();;

module SomeUsers = Map.Make(String);;
let m = SomeUsers.empty;;

let m = SomeUsers.add "Vasya" "Qwert123" m

let print_user key password = 
    print_string(key ^ " " ^ password ^ "\n");;

SomeUsers.iter print_user m
