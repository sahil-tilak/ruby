puts "Enter Number"
num=gets.to_i
div=2

prime = (div..num).each {|n| num%div==0}
if num==div
  puts "Number is prime."
else
  puts "Number is not prime."
end


