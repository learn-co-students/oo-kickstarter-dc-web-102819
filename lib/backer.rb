class Backer

    attr_reader :name

    def initialize(name)
        @name =  name
    end
    
    def add_project(project)
        BackerProjects.new(self, project)
    end

end