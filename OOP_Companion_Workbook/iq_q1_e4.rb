class Greeting
  def greet(string) 
    puts string
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

hi = Greeting.new
hi.greet('Hi!')

hello = Hello.new
hello.hi

goodbye = Goodbye.new
goodbye.bye