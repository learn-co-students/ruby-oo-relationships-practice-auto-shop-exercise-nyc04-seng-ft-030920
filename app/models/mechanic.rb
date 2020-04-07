class Mechanic

  attr_reader :name, :specialty
  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def get_cars
    cars = Car.all.select{|car| car.mechanic == self}
  end

  def get_car_owners
    get_cars.map(&:owner)
  end

  def get_owner_names
    get_car_owners.map(&:name)
  end

end
