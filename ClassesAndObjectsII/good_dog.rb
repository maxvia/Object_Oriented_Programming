# good_dog.rb
# Class methods and variables

class GoodDog
  DOG_YEARS = 7
  @@number_of_dogs = 0
  attr_accessor :name, :age

  def initialize(n, a)
    @@number_of_dogs += 1
    self.name = n
    self.age = a * DOG_YEARS
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end

  def to_s
    "This dog's name is #{name} and it is #{age} in dog years."
  end

  def what_is_self
    self
  end

  puts self
end

puts GoodDog.total_number_of_dogs   # => 0

sparky = GoodDog.new('Sparky', 4)

puts GoodDog.total_number_of_dogs   # => 2

puts sparky.age

puts sparky

p sparky

p sparky.what_is_self