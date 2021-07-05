require 'pry'
require_relative 'project.rb'
require_relative 'backer.rb'
require_relative 'project_backers.rb'

project1 = Project.new('startup')
project2 = Project.new('startup2')
project3 = Project.new('startup3')
backer1 = Backer.new("matt")
backer2 = Backer.new('jasur')
backer3 = Backer.new('ryan')
backer1.back_project(project2)
backer1.back_project(project1)
backer2.back_project(project3)
backer3.back_project(project2)
backer3.back_project(project1)



