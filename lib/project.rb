class Project

	attr_reader :title

	def initialize(title)
		@title = title
	end

	def add_backer(backer)
		BackerProjects.new(backer, self)
	end

	def backers
		BackerProjects.all.select do |backerproject|
			backerproject.project == self
		end.collect do |backerproject|
			backerproject.backer
		end
	end
end
