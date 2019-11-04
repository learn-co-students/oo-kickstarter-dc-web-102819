require 'pry'
require_relative '../lib/project.rb'
require_relative '../lib/backer.rb'
require_relative '../lib/BackerProjects.rb'

project = Project.new("test")
backer_test = Backer.new("Testing")
project.add_backer(backer_test)
project.backers