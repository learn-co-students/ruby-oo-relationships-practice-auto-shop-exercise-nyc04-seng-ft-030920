require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

m1 = Mechanic.new("Annie", "Vintage")
m2 = Mechanic.new("Kathy", "Economy")
m3 = Mechanic.new("Virgil", "Sport")
m4 = Mechanic.new("Joe", "Truck")
m5 = Mechanic.new("Tony", "Truck")

o1 = CarOwner.new("John")
o2 = CarOwner.new("Dorothy")
o3 = CarOwner.new("Daisy")
o4 = CarOwner.new("Debbie")

c1 = Car.new(o1, "Audi", "A6", "Sports", m3)
c2 = Car.new(o1, "Ford", "Model T", "Vintage", m1)
c3 = Car.new(o1, "Subaru", "Impreza", "Economy", m2)
c4 = Car.new(o1, "Toyota", "Carolla", "Economy", m2)
c5 = Car.new(o1, "Jeep", "Wrangler", "Truck", m4)
c6 = Car.new(o2, "BMW", "330", "Vintage", m1)
c7 = Car.new(o2, "BMW", "M5", "Sports", m3)
c8 = Car.new(o3, "Ford", "F 150", "Truck", m4)
c9 = Car.new(o4, "Ford", "Focus", "Economy", m2)
c10 = Car.new(o4, "Ferrari", "Portofino", "Sports", m3)




binding.pry
