require "pry"

class Project

    attr_accessor :title, :backers

    @@all = []

    def initialize(project_name)
        @title = project_name
        # @backers = []
        @@all << self
    end

    def self.all
        @@all
    end

    def see_backers
        invested_projects = BackerProject.all.select { | projectPair |
            projectPair.project == self
        }
        array_of_backers = invested_projects.map { | investor | investor.backer }

        array_of_backers.each { |backer| 
        puts "#{backer.name} invested in #{self.title}."
        }
    end
end