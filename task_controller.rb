require_relative 'task_view'
require_relative 'task'

class TaskController
	def initialize(repository)
		@repository = repository
		@view = TaskView.new
	end

	def add #=> Criar nova Task
		title = @view.ask_user_for("Task title")	# 1. Perguntar ao user qual o titúlo
		task = Task.new(title)                    # 2. Criar uma Task.new com o Titulo do user
		@repository.add(task)											# 3. Adicionar Task dentro do repo
		list								        							# 4. Listar as tarefas existentes
	end

	def list #=> Mostras todas as Tasks Criadas
		tasks = @repository.list # 1. Pegar todas as Tasks do repo
		@view.display(tasks)		 # 2. Mostrar pela TaskView quais são as tasks 
	end

	def done #=> Marcar uma tarefa como feita!
		list 																						# 1. Listar todas as Tasks
		index = @view.ask_user_for("Which Index").to_i	# 2. Perguntar ao user qual Task (index)
		index -= 1																			# 3. Trocar indice p/ valor real do Array
		task = @repository.find(index)									# 4. Procurar no Repo qual a Task pelo index
		task.mark_as_done!															# 5. Marcar instancia como mark_as_done!
	end
end