puts "Number to factorial: "
n = gets.chomp.to_i

puts (1..n).inject(1, :*)
def factorial(n)
  if n<= 1
    1
   else
    n * factorial( n - 1 )
   end
end

puts factorial(n)
