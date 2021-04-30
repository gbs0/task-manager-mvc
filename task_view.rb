class TaskView
	def display(array)
		puts "Tasks:"
		puts "Index  --   Status   -- Title"
		array.each_with_index do |task, index| 
			status = task.done? ? "[X]" : "[ ]"
			puts "• #{index + 1} - #{status} | #{task.title}"
		end
	end
	
	def ask_user_for(stuff)# Perguntar pro User titulo da Task
		puts "#{stuff}?"
		print ">"
		gets.chomp
	end

	def print_actions
		puts "\n----"
		puts "What you wnat to do?"
		puts "1. Add a new Task"
		puts "2. List All Tasks"
		puts "3. Mark Task as Done"
		puts "4. Exit"
		print "> "
		gets.chomp.to_i
	end
end