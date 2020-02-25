class CarOwner

  attr_reader :name, :mechanic

@@all = []

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def list_of_cars
    Car.all.select {|car| car.owner == self}
  end

  def mechanics
    list_of_cars.map {|car| car.mechanic}
  end

  def self.average_number
    (Car.all.length.to_f/CarOwner.all.length.to_f)
  end

end
