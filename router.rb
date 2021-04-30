
class Router
	def initialize(controller, view)
	  @controller = controller
	  @view = view
	end

	def run
		loop do
			choice = print_actions
			dispatch(choice)
		end
	end  # Rodar o programa
	
	def print_actions # Lista de Opções
		@view.print_actions
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
