class CarOwner

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  #List of cars that a specific owner has
  def cars
    Car.all.select do |car|
      car.car_owner == self
    end
  end

  #list of all the mechanics that a specific owner goes to
  def mechanics
    self.cars.map do |car|
      car.mechanic
    end
  end

  def self.average_cars_owned
    num_owners = self.all.count
    num_cars_owned = Car.all.count
    num_cars_owned / num_owners
  end

end
