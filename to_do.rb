module Menu
	
	def outro 
		@outro
	end
	@outro = "Thanks for using Todo List. See you next time!"

	def menu
		"Welcome User!

		MENU
		1)Add
		2)Show
		3)Write to a File
		
		Type 'q' to Quit the Program \n" 
	end

	def show
		menu
	end
end

module Promptable
	def prompt(message="What would you like to do?", symbol='=> ')
		print message, symbol 
		gets.chomp
	end
end

#classes
class List
	attr_reader :all_tasks

	def initialize
	 	@all_tasks = []
	end

	def add_task(task)
		all_tasks << task
		puts "New task '#{task}' added to Todo List."
		puts task.inspect
	end

	def show_tasks
		all_tasks
	end	

	def write_to_file(file_name="file_name.txt")
		new_file = File.new("file_name.txt", "r+") 
		new_file.puts all_tasks
		new_file.close
	end



end

class Task
	attr_reader :description

  	def initialize(description)
  		@description = description
  	end

  	def to_s
  		description.to_s
  		#return tasks description as a string
  	end

end


if __FILE__ == $PROGRAM_NAME
	include Menu
	include Promptable

	mylist = List.new
	puts "Welcome to the Todo List. Please choose from the following list:"
		until ('q').include?(user_input = prompt(show).downcase)
			case user_input
				when "1"
					mylist.add_task(Task.new(prompt("What is the task you would like to add to Todo List?\n")))
				when "2"
					puts mylist.show_tasks
				when "3"
					mylist.write_to_file
				else 
					puts "Get it right, choose '1', '2', or '3'."
			end
		end
	puts Menu.outro
	
end

	#create a method write_to_file that takes filename as an argument,
	#and ouputs the alltasks array (descriptions) as a list.
	#Use an IO class.
