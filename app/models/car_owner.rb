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

  def owner_cars
    Car.all.select {|car| car.owner == self}
  end

  def mechanics
    owner_cars.map {|car| car.mechanic}
  end

  def self.avg_cars_per_owner
    num_cars_array = self.all.map {|owner| owner.owner_cars.length}
    (num_cars_array.sum.to_f / num_cars_array.length.to_f).round(2)
  end

end
