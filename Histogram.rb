#Create a Histogram from user input

puts "Enter a phrase you'd like to analyze: "
text = gets.chomp

words = text.split

frequencies = Hash.new(0)
#sets default value for keys in hash to "0"

words.each { |word| frequencies[word] += 1 }
#iterates through each word, adds it to hash, and counts (increases the value by 1) 

frequencies = frequencies.sort_by do |word, count|
  count
end
#sorts frequencies by count, smallest to largest

frequencies.reverse!
#reverses the order

frequencies.each do |word, count|
  puts "#{word}: #{count.to_s}"
end