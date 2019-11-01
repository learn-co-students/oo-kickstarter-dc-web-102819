class Backer

    attr_accessor :backed_projects
    attr_reader :name
    #initialize Backer with name and empty backed_projects array
    def initialize(name)
        @name = name
        @backed_projects = []
    end
    #'backs' a project by storing it into backed_projects array. Uses method add_backer in 
    #project class to add self to @backers array
    def back_project(project)
        @backed_projects << project
        project.backers << self
    end

end