require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

mary = CarOwner.new("Mary")
jerry = Mechanic.new("Jerry", "Clunker")
pat = Mechanic.new("Pat", "Speed-demon")
honda = Car.new("Honda", "Civic", "Speed-demon", pat, mary)
vibe = Car.new("Pontiac", "Vibe", "Clunker", jerry, mary)

puts "Gets list of car classifications?"
puts Car.car_classifications == ["Speed-demon", "Clunker"]

puts "\nList of mechanics with expertise that matches car"
puts vibe.mechanics == [jerry]

puts "\nList of all cars that certain mechanic services"
puts jerry.cars == [vibe]

puts "\nList of car owners that go to specific mechanic"
puts pat.owners == [mary]

puts "\nList of names of car owners who go to a
specific mechanic"
puts jerry.owner_names == ["Mary"]

puts "\nList of cars that a specific owner has"
puts mary.cars == [honda, vibe]

puts "\nlist of all the mechanics that a specific owner goes to"
puts mary.mechanics == [pat, jerry]

puts "\nAverage amount of cars owned for all owners"
puts CarOwner.average_cars_owned == 2
#binding.pry
0
