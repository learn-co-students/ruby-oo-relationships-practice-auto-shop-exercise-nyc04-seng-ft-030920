require_relative '../config/environment.rb'

jerry = CarOwner.new("Jerry Mouse")
will = Mechanic.new("Will Smith", "clunk")
tom = Mechanic.new("Tom Cat", "old")
camry = Car.new("Toyota", "Camry", "clunk", jerry, will)
prius = Car.new("Toyota", "Prius", "old", jerry, tom)
ruby = CarOwner.new("Ruby")
tiffany = CarOwner.new("Tiffany Breakfast")
natsumi = CarOwner.new("Natsumi Hasegawa")
jeep = Car.new("Jeep", "Wrangler", "old", natsumi, tom)




def reload
  load 'config/environment.rb'
end

binding.pry
