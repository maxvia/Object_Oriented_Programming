# good_dog.rb

class GoodDog

  def initialize(name)
    @name = name
  end

  def get_name
    @name
  end

  def set_name=(name)
    @name = name
  end

  def speak
    "#{@name} says: Arf!"
  end

end

sparky = GoodDog.new('Sparky')
puts sparky.speak

fido = GoodDog.new("Fido")
puts fido.speak

puts sparky.get_name
puts fido.get_name

sparky.set_name = "Spartakus"
puts sparky.get_name