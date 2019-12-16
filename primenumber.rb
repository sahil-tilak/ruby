puts "Enter Number"
num=gets.to_i
div=2
until num%div==0
	div=div+1
end
      if num==div
	      puts "Number is prime."
      else
	      puts "Number is not prime."
      end

      
