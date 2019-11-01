require "pry"

class Project

	attr_reader :backers, :title

	def initialize(title)
		@title = title
		@backers = []
	end

	def add_backer(backer)
		if @backers.include?(backer)
			"#{self.title} is already backed by this #{backer.name}"
		else 
			@backers << backer
			backer.back_project(self)
		end	
	end
end