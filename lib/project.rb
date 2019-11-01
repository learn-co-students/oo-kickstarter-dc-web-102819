class Project

    attr_accessor :title
    attr_reader :backers

    def initialize(project_name)
        @title = project_name
        @backers = []
    end

    def add_backer(backer)
        unless self.backers.include?(backer)
            self.backers << backer
            backer.back_project(self)
        end
    end


end