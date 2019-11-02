class Backer
	attr_reader :name

	def initialize(name)
		@name = name
	end

	def add_project(project)
		BackerProjects.new(self, project)
	end

	def projects
		BackerProjects.all.select do |backerproject|
			backerproject.backer == self
		end.collect do |backerproject|
			backerproject.project
		end
	end
	
end
