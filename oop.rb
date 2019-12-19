class Result
	attr_accessor:marks, :name, :id
	def initialize(marks,name)
		@marks=marks
		@name=name
		@each_percentage = []
	end

	public
	def percentage
		sum= 0.0
		for i in 0..3 do
			sum+=@marks[i].to_f
		end
		per = sum/4
		puts per
		@each_percentage << per
 end
		
        def highest_percent
		puts @each_percentage.max
	end
end

for i in 0..1 do
	marks=[]
	puts "Enter name : "
	name = gets.chomp

	puts "Enter marks",i 
	for j in 0..3 do
		marks[j] = gets.to_i
	end

	obj = Result.new(marks, name)
	obj.percentage
end
  obj.highest_percent



		
