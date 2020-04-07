class Car

  attr_reader :make, :model, :classification, :owner, :mechanic
  @@all = []

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.car_classifications
    @@all.map(&:classification)
  end

  def get_mechanic
    Mechanic.all.select{|mechanic| mechanic.specialty == @classification}
  end

end
