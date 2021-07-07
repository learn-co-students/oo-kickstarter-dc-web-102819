class Backer

	# attr_accessor :name
	attr_reader :backed_projects, :name

	def initialize(backer_name)
		@name = backer_name
		@backed_projects = []
	end

	def back_project(project)
		if @backed_projects.include?(project)
			"#{project.title} is already backed by #{self.name}"
		else
			@backed_projects << project
			project.add_backer(self)
		end
	end

end