require_relative 'task_controller'
require_relative 'task_repository'
require_relative 'router'
require_relative 'task_view'

view = TaskView.new
repository = TaskRepository.new
controller = TaskController.new(repository)
router = Router.new(controller, view)

router.run


