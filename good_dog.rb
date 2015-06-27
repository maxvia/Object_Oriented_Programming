# good_dog.rb

class GoodDog

  def initialize(name)
    @name = name
  end

  def name              # This was renamed from "get_name"
    @name
  end

  def name=(n)   # This was renamed from "set_name="
    @name = n
  end

  def speak
    "#{@name} says: Arf!"
  end

end

sparky = GoodDog.new('Sparky')
puts sparky.speak

fido = GoodDog.new("Fido")
puts fido.speak

puts sparky.name
puts fido.name

sparky.name = "Spartakus"
puts sparky.name