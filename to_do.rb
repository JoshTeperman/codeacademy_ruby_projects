#classes
class List
	attr_reader :name
	
	def initialize(name, tasks=[])
		@name = name
		@tasks = tasks
	end

	def show_tasks
		unless @tasks == [] 
			puts @tasks
		else 
			puts "No tasks set yet" 
		end
	end

	def add_task
		puts "Please write your new task:"
		task = gets.chomp
		@tasks.push(task)
		puts "Task added: #{@tasks}"
	end

end

josh = List.new("Josh")
tester = List.new("Test_list")

josh.add_task





=begin
	
- List Class
Create a list
Add task to list
Show all tasks
Read a task from a file
Write a list to a file
Delete a task
Update a task

- Task Class
Create a task item
	
=end	