puts "Enter grade:"
grd = gets.to_i

level = case grd
        when 1..5 then "Elementary"
        when 6..8 then "Middle School"
        when 9..12 then "High School"
        else "College"
        end
puts level

