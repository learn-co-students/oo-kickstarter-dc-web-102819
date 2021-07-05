require 'pry'
require_relative 'project.rb'
class Backer
    attr_reader :name
    attr_accessor :backed_project
    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end
end