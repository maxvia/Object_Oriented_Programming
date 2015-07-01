class CoffeeMachine
  def make_coffee
    get_water(200)
    get_beans(50)
    prepare_beans
    boil_water
    pour_coffee
  end

  protected

  def get_water(mls)
    puts "Collecting #{mls} mls of water"
  end

  def get_beans(grams)
    puts "Collecting from the storage #{grams} grams of the beans"
  end

  def prepare_beans
    puts "Preparing the beans"
  end

  def boil_water
    puts "Boiling the water"
  end

  def pour_coffee
    puts "Pouring the coffee into the cup!"
  end
end

saeco = CoffeeMachine.new

saeco.make_coffee

saeco.boil_water