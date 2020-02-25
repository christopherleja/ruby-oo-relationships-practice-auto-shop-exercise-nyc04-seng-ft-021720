class Car

  attr_reader :make, :model
  attr_accessor :owner, :mechanic, :classification

  @@all = []

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all.push(self)
  end

  def self.classification
    self.all.map {|car| car.classification} 
  end

  def self.all
    @@all
  end

end
