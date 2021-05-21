class BackerProject

    attr_accessor :project, :backer

    @@all = []

    def initialize(project, backer)
        @project = project
        @backer = backer
        @@all << self
    end

    def self.all
        @@all
    end

    def self.change_all(replacement)
        @@all = replacement
    end

end