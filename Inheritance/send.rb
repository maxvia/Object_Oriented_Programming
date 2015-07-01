class Parent
  def say_hi
    p "Hi from Parent."
  end
end

class Child < Parent
  def say_hi
    p "Hi from Child."
  end
end

puts Parent.superclass
child = Child.new
child.say_hi

son = Child.new

son.send :say_hi

aa = 'say_hi'
son.send aa
