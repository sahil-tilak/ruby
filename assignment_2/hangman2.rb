words_arr = ['mobile', 'bottle', 'scissor', 'coffee', 'blogger', 'titan', 'integrity', 'passion', 'technology']

def alphabet_input
  @char = gets.chomp
end

def includes_alphabet(word)
  word.include? @char
end

def alphabet_index_many(word)
  for j in 0..word.length
    if word[j] == @char
      @blank_arr[j] = @char
    end
  end
  print @blank_arr  
end

words_arr.shuffle.each do |word|
  @blank_arr = []
  for j in 1..word.length
    @blank_arr.push ("_")
  end
  n = 5
  puts"Number of alphabets:#{word.length}"
  while n > 0
    print "\nEnter alphabet: "
    alphabet_input
    if includes_alphabet(word)
       alphabet_index_many(word)
    else
      n -= 1
      puts "Wrong alphabet. Number of chances : #{n}"
    end
    if word == @blank_arr.join
      puts "\nSuccess"
      break
    end
  end
  puts "Fail" if n == 0
end

