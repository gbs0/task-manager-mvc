require 'cli/ui'

class Router
	def initialize(controller, view)
	  @controller = controller
	  @view = view
	  @running = true
	end

	def run
		while @running
			print_actions
		end
	end  # Rodar o programa
	
	def print_actions # Lista de Opções
		CLI::UI::Prompt.ask('Welcome to Task Manager') do |handler|
  			handler.option('Add a New Task')  { |selection| @controller.add }
  			handler.option('List all Tasks')     { |selection| @controller.list }
  			handler.option('Mark Task as Done')   { |selection| @controller.done }
  			handler.option('Exit') 					{ |selection| stop }
		end
	end 

	def stop
		@running = false
	end
	
	def dispatch(choice) # Dispachar escolha do user p/ controller
		if choice == 1
			@controller.add
		elsif choice == 2
			@controller.list
		elsif choice == 3
			@controller.done
		elsif choice == 4
			exit
		else
			puts "Select a valid option!"
		end
	end 
end
