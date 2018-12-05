=begin
to do:
- handle lower/uppercase
- re-run program on errors / return to question
- return to menu after completing option
- exit program
- select answers using numbers 
=end

movies = {
  Braveheart: 4,
  Strippers: 1.5
  }

puts "Welcome to movie hash. Pick an option from the following: \n- add \n- update \n- display \n- delete \n- else"
choice = gets.chomp

case choice
  when "add"
    puts "What is the title of the movie?"
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "What is the rating of the movie?"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
		  puts "#{title} was added to movie hash with a rating of #{rating}"
    else 
      puts "That movie already exists."
    end
  when "update"
    puts "Which title would you like to update?"
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "#{title} doesn't exist"
    else 
      puts "What is the rating of #{title}?"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
		  puts "#{title}'s rating was updated to #{rating}"
    end
  when "display" 
    puts "Here are the movies currently reviewed in movie hash:"
  	movies.each {|movie, rating| puts "#{movie}: #{rating}"}
  when "delete"
    puts "Which movie would you like to delete?"
    movies.each_key {|movie| puts "- #{movie}"} 
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "#{title} doesn't exist"
    else 
      movies.delete(title.to_sym)
      puts "#{title} deleted."
    end
end

puts movies