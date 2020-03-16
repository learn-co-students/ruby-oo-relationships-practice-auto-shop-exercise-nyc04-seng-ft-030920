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

  def get_cars
    Car.all.select{|car| car.owner == self}
  end

  def get_mechanics
    get_cars.map(&:mechanic)
  end

  def self.average_cars
    car_owners = Car.all.map(&:owner).uniq
    Car.all.length.to_f / car_owners.length.to_f
  end

end
