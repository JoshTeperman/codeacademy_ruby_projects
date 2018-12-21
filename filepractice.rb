module Welcome
	def welcome_message 
		"Welcome to File Practice."
	end

	def exit_message
		"See you later"
	end
end

module Prompter
	def prompt(message="What would you like to do?", cursor=">> ")
		print message, cursor
		user_input = gets.chomp
	end

	def show_message
		puts "Select an option from the menu below:
		1. Create a new file
		2. Read contents of file
		3. Write a new note
		4. Delete contents of file
		5. Search
		6. Rename file

		... press 'q' to exit ... \n"
	end

end



class Doc
	attr_reader :name

	def initialize(file_name="blank.txt")
		@file_name = file_name
		#create new instance of file with name
	end

	def read 
		#show contents of file
	end

	def write
		#append content to file
	end

	def clear
		#delete file contents
	end

	def search
		#search for keyword
	end

	def rename
		#rename file
	end


end

if __FILE__ == $PROGRAM_NAME
	include Welcome
	include Prompter	

	newfile = Doc.new
	puts welcome_message

		until ('q').include?(user_input = prompt(show_message)) 
			case user_input
				when "1"
					newfile = File.new("newfile.txt", "r")
					newfile.close
				when "2"
					nil 
				else 
					puts "Generic Error Message"
			end
		
		# 	#read / write 
		# 	#search
		# 	#delete
		# 	#rename
		end
	puts exit_message
end	

