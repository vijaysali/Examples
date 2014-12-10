#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#Find the sum of all the multiples of 3 or 5 below 1000.
a, b = 3,5
puts "Enter the Limit"
limit = gets.to_i
p (1..limit).map{|x| x if (x % a == 0 || x % 5 == 0)}.compact.reduce(:+)

