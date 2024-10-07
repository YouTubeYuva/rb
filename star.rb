def staircase(n)
    (1..n).each do |i|
     spaces = ' ' * (n - i) + '#' * i
     puts spaces
   end
 end
 
 staircase(4)