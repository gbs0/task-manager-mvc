class TaskView
	def display(array)
		CLI::UI::Frame.open('Tasks') do
			puts "Index  --   Status   -- Title"
			array.each_with_index do |task, index| 
				status = task.done? ? "[X]" : "[ ]"
				puts "• #{index + 1} - #{status} | #{task.title}"
			end
		end
	end
	
	def ask_user_for(stuff)# Perguntar pro User titulo da Task
		CLI::UI::Frame.open("#{stuff}") do
			puts "#{stuff}?"
			print ">"
			gets.chomp
		end
	end

	def print_actions
		CLI::UI::Frame.open('Welcome to Task Manager') do
			gets.chomp
  		end		
	end
	
end