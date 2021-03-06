# author: @GauravPoosarla
local
  fun fbstr i =
      case (i mod 3 = 0, i mod 5 = 0) of
          (true , true ) => "FizzBuzz"
        | (true , false) => "Fizz"
        | (false, true ) => "Buzz"
        | (false, false) => Int.toString i

  fun fizzbuzz' (n, j) =
      if n = j then () else (print (fbstr j ^ "\n"); fizzbuzz' (n, j+1))
in
  fun fizzbuzz n = fizzbuzz' (n, 1)
  val _ = fizzbuzz 100
end


local
  fun fb i = let val fizz = i mod 3 = 0 andalso (print "Fizz"; true)
                 val buzz = i mod 5 = 0 andalso (print "Buzz"; true)
             in fizz orelse buzz orelse (print (Int.toString i); true) end
in
  fun fizzbuzz n = (List.tabulate (n, fn i => (fb (i+1); print "\n")))
  val _ = fizzbuzz 100
end