puts "Enter grade:"
grd = gets.to_i
   if grd>0 && grd<6
	   puts "Elementary."
   elsif grd>5 && grd<10
	   puts "Middle School."
   elsif  grd>9 && grd<13
	   puts "High School."
   else 
	   puts "College."
   end

