class Backer

attr_accessor :name
attr_reader :backed_projects

    def initialize(name)
        @name = name
        @backed_projects = []
    end

    def back_project(project)
        unless self.backed_projects.include?(project)

            self.backed_projects << project
            project.add_backer(self) 
        
        end
    end
end