require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

bill = CarOwner.new("Bill Cinammon")
bart = CarOwner.new("Bart Simpson")

jimmy = Mechanic.new("Jimmy", "Antique")
tony = Mechanic.new("Tony", "Muscle Car")
charlie = Mechanic.new("Charlie", "Junker")

batmobile = Car.new("Volvo", "Batmobile", "Muscle Car", bill, tony)
truck = Car.new("GM", "Truck", "Junker", bart, charlie)
whatever = Car.new("Ford", "Pinto", "Antique", bart, jimmy)

binding.pry
