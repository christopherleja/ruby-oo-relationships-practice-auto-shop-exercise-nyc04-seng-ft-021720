class Mechanic

  attr_reader :name, :specialty

  @@all = []

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all.push(self)
end

def self.list_specialties
  self.all.map {|m| m.specialty}
end

def match_specialty
  Car.all.select {|car| car.classification == self.specialty}
end

def cars
  Car.all.select {|car| car.mechanic == self}
end

def owners_helped
  match_specialty.map {|car| car.owner}
end

def owners_helped_name
  match_specialty.map {|car| car.owner.name}
end

def self.all
  @@all
end


end
