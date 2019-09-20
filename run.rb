require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here


bronx_zoo = Zoo.new("Bronx Zoo", "The Bronx")
philly_zoo = Zoo.new("Philadelphi Zoo", "Philly")
flat_zoo = Zoo.new("Flatiron Zoo", "Manhattan")

leo = Animal.new("lion", 200, "Leo", bronx_zoo)
balloo = Animal.new("bear", 300, "Balloo", bronx_zoo)
simba = Animal.new("lion", 130, "Simba", philly_zoo)
ghost = Animal.new("wolf", 80, "Ghost", flat_zoo)


 binding.pry
 puts "done"
