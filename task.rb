class Task
	attr_reader :title
	def initialize(title)
		@title = title
		@completed = false
	end

	def mark_as_done!
		@completed = true
	end

	def done?
		return @completed
	end
end