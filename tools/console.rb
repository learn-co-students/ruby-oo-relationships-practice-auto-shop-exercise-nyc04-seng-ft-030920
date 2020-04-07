require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

jack = CarOwner.new("Jack Adams")
bill = Mechanic.new("Bill Smith", "clunker")
camry = Car.new("Toyota", "Camry", "clunker", jack, bill)
binding.pry
