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

  def cars_serviced
    Car.all.select {|car| car.mechanic == self}
  end

  def owner_customers
    cars_serviced.map(&:owner).uniq
  end

  def customer_names
    owner_customers.map(&:name)
  end

end
