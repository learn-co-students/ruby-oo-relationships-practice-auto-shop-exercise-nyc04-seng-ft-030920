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

  def cars
    Car.all.select {|car|
    car.carowner == self
  }
  end

  def mechanic
    cars.map {|cars|
    cars.mechanic
  }
  end

  def averagecars
    numofcars = Cars.all.length
    numofowners = self.all.length
    numofcars / numofowners
    # self.all.length
    # list of all sowners
    # cars.length 
    # list of all cars specific owner own
  end


end
