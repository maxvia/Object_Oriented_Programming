module FuelRange
  attr_accessor :speed, :heading
  # why is this added in the book ???
  #attr_writer :fuel_capacity, :fuel_efficiency
  # because 'Catamaran' have attr_accessor :range ??
  # so they have range-reader and add reformated range-writer ?
  # but Auto and Moto don't have anything like this... ???

  # why do they use 'self' instead of '@' in 'initialize' ???

  def range
    r = @fuel_capacity * @fuel_efficiency
    self.class.superclass == Boats ? r + 10 : r
  end
end

class WheeledVehicle
  include FuelRange

  def initialize(tire_array, km_traveled_per_liter, liters_of_fuel_capacity)
    @tires = tire_array
    @fuel_efficiency = km_traveled_per_liter
    @fuel_capacity = liters_of_fuel_capacity
  end

  def tire_pressure(tire_index)
    @tires[tire_index]
  end

  def inflate_tire(tire_index, pressure)
    @tires[tire_index] = pressure
  end
end

class Auto < WheeledVehicle
  def initialize
    # 4 tires are various tire pressures
    super([30,30,32,32], 50, 25.0)
  end
end

class Motorcycle < WheeledVehicle
  def initialize
    # 2 tires are various tire pressures along with 
    super([20,20], 80, 8.0)
  end
end

class Boats
  include FuelRange
  attr_accessor :propeller_count, :hull_count

  def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
    @propeller_count = num_propellers
    @hull_count = num_hulls
    @fuel_efficiency = km_traveled_per_liter
    @fuel_capacity = liters_of_fuel_capacity
  end
end

class Catamaran < Boats
  def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
    super(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
  end
end

class Motorboat < Boats
  def initialize(km_traveled_per_liter, liters_of_fuel_capacity)
    super(1, 1, km_traveled_per_liter, liters_of_fuel_capacity)
  end
end

mot = Motorcycle.new
puts mot.range

aut = Auto.new
puts aut.range

cat = Catamaran.new(2, 2, 20.0, 400.0)
puts cat.range

boat = Motorboat.new(10.0, 300.0)
puts boat.range