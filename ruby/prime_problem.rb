p "Enter the value (Integers accepted):"
x = gets.chomp.to_i
def is_prime(x)
  (2..(x/2)).each do |obj|
    if x%obj == 0
      return false
    end
  end
  return true
end
if is_prime(x)
  puts "#{x} is prime number"
else
  puts "#{x} is not prime number"
end

p "*"*100
p "Little modified version, i can say"
x = gets.chomp.to_i
def modified_prime(x) 
  (2..(x/2)).each{|obj| return false if x%obj == 0}
  true
end
p modified_prime(x) ? "Its prime" : "Its not prime"

