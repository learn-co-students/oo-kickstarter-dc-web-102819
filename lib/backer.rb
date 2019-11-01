require ‘pry’
require_relative backed_projects.rb
require_relative project.rb

class Backer
  # Backer will no longer need to have the Project Name
   attr_reader :name
   def initialize(name)
     @name = name
   end
   def back_project(project)
       new.Backer_Projects(self , project)
   end
   def fetch_projects
     myprojects = Backer_Projects.all.select do |backed_projects|
       binding.pry
       backed_projects.backer == self
     end
   end
end
sara = new.Backer(“Sara”)
project_name = new.Project(“Save the trees”)
sara.back_project(project_name)
# backed_projects = new.Backed_Projects(“Sara” , “Save The Trees”) ;