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

def carss
  Car.all.select{|car|
  car.mechanic == self
}
end

def carowners
  carss.map {|carmechanic|
  carmechanic.carowner
}
end



end
