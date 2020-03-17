class Car

  attr_reader :make, :model, :carowner, :classification, :mechanic

  @@all = []

  def initialize(make, model, classification, carowner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @carowner = carowner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classification
    @@all.map {|car|
    car.classification
  }
  end

  def mechanicmatch
    Mechanic.all.select{|mechanic|
    mechanic.specialty == classification
  }
  end

end
