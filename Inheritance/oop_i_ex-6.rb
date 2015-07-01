module ReducedTransmission
  def r_t_on
    puts "ReducedTransmission is on"
  end
end

class Vehicle
  @@count_vehicles = 0
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
    @@count_vehicles += 1
  end

  def number_vehicles
    puts "The number of vehicles is #{@@count_vehicles}"
  end

  def info
    "My car is a #{@color} #{@model} #{@year} year." 
  end

  def speed
    puts "My car speed is #{@speed} mph now."
  end

  def speed_up=(s)
    puts "I speed up my car for #{s} mph!!!"
    @speed += s
  end

  def brake=(s)
    puts "I brake down my car for #{s} mph..."
    @speed -= s
  end

  def shut_off
    puts "I STOPPED and shut off my car."
    @speed = 0
  end

end


class MyCar < Vehicle
  MAX_SPEED = 400
  def initialize(year, color, model)
    super
    puts "A new object of class MyCar initialized!"
  end

  def age
    puts "The car #{@model} is #{now - @year.to_i} years old now."
  end

  private

  def now
    Time.now.year
  end

end


class MyTruck < Vehicle
  MAX_LOAD = 1000
  include ReducedTransmission
  def initialize(year, color, model)
    super
    puts "A new object of class MyTruck initialized!"
  end
end


car = MyCar.new('2010', 'Silver', 'BMW X5')
car.number_vehicles
puts car.info
car.speed

car.speed_up = 200
car.speed

car.speed_up = 100
car.speed

car.brake = 120
car.speed

car.shut_off
car.speed

truck = MyTruck.new('2012', 'Red', 'Ford Ranger')
truck.number_vehicles
puts truck.info
truck.r_t_on

p MyTruck.ancestors
p MyCar.ancestors
p Vehicle.ancestors

car.age