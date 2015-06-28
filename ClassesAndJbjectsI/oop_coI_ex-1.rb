# MyCar

class MyCar
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
    puts "A new object of class MyCar initialized!"
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

car = MyCar.new('2015', 'Red', 'BMW X5')
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

