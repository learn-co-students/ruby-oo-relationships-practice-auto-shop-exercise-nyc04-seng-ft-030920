class Car
attr_accessor :owner, :mechanic
attr_reader :make, :model, :type

  @@all =[]

  def initialize(owner, make, model, type, mechanic = nil)
    @owner = owner
    @mechanic = mechanic
    @make = make
    @model = model
    @type = type
    @@all << self
  end

  def self.all
    @@all
  end

  def self.car_types
    (self.all.map {|car| car.type}).uniq
  end

  def mech_match
    Mechanic.all.select {|mechanic| mechanic.specialty == self.type}
  end

  

end
