require "pry"
require_relative "backed_projects.rb"
require_relative "project.rb"

class Backer
  # Backer will no longer need to have the Project Name
   attr_reader :name
   def initialize(name)
     @name = name
   end
   def back_project(project)
       Backer_Projects.new(self , project)
   end
   def fetch_projects
     myprojects = Backer_Projects.all.select do |backed_project|
       backed_project.backer == self
       binding.pry
     end

   end
end
sara = Backer.new("Sara")
project_name = Project.new("Save the trees")
sara.back_project(project_name)
binding.pry
# backed_projects = new.Backed_Projects(“Sara” , “Save The Trees”) ;

