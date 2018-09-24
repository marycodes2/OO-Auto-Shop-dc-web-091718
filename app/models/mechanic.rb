class Mechanic

  attr_reader :name, :specialty
  @@all = []

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end

def self.all
  @@all
end

def cars
  Car.all.select do |car_instance|
    car_instance.mechanic == self
    #binding.pry
  end
end

#Get a list of all the car
#owners that go to a specific mechanic
def owners
  self.cars.map do |car|
    car.car_owner
  end
end

def owner_names
    self.owners.map do |owner|
      owner.name
    end
  end
  

end
