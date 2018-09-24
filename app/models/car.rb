class Car

  attr_reader :make, :model, :classification, :mechanic, :car_owner
  @@all = []

  def initialize(make, model, classification, mechanic, car_owner)
    @make = make
    @model = model
    @classification = classification
    @mechanic = mechanic
    @car_owner = car_owner
    @@all << self
  end

  #Get a list of all cars
  def self.all
    @@all
  end

  def self.car_classifications
    self.all.map do |car|
      car.classification
    end
  end

  def mechanics
    Mechanic.all.find_all do |mechanic|
      mechanic.specialty == self.classification
    end
  end


end
