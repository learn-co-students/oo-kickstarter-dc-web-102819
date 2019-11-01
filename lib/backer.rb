class Backer

attr_accessor :name
attr_reader :backed_projects

@@all = []

    def initialize(name)
        @name = name
        # @backed_projects = []
        @@all << self
    end

    def back_project(project)
        BackerProject.new(project, self)
    end

    def self.all
        @@all
    end

    def see_projects_backed
        invested_projects = BackerProject.all.select { | projectPair |
        projectPair.backer == self
        }
        array_of_backed_projects = invested_projects.map { | investor | investor.project }
        
        array_of_backed_projects.each { | project |
        puts self.name + ": " + project.title
        } 
    end

    def disinvest(dis_project)
        resulting_array = BackerProject.all.delete_if { | projectPair |
            projectPair.backer == self && projectPair.project == dis_project
        }
        
        BackerProject.change_all(resulting_array)
        puts "#{self.name} is no longer backing #{dis_project.title}."
    end
end