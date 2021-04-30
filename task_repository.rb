class TaskRepository
	def initialize
		@tasks = []
	end

	# CRUD => Behaviour

	def add(task) # => Adicionar instancia de Task
		@tasks << task
	end

	def list
		return @tasks
	end

	def find(index)
		@tasks[index]
	end

	def save_csv; end
	def load_csv; end

end