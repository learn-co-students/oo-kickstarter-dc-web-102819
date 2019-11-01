require "pry"
require_relative '../lib/project'
require_relative '../lib/backer'
require_relative '../lib/backer-project'

jose = Backer.new("Jose")
matt = Backer.new("Matt")

#Backer.all.each { |backer| puts backer.name}

our_kickstarter = Project.new("Kickstarter")
hoverboard = Project.new("Hoverboard")


#Project.all.each { |project| puts project.title}

jose.back_project(our_kickstarter)
matt.back_project(our_kickstarter)
matt.back_project(hoverboard)

puts "Hello, World!"

#puts our_kickstarter.see_backers
#puts hoverboard.see_backers

#jose.see_projects_backed
#puts "#######"
#matt.see_projects_backed

hoverboard.see_backers
puts "######"
our_kickstarter.see_backers

puts "****************"
# binding.pry
matt.disinvest(hoverboard)

hoverboard.see_backers
puts "#########"
our_kickstarter.see_backers