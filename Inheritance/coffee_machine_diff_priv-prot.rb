class CoffeeMachine
  def make_coffee
    puts "--- Making Coffee ---"
    get_water(200)
    get_beans(50)
    prepare_beans
    boil_water
    pour_coffee
    puts "--- Ready! ---"
  end

  def clean
    puts "+++ Self Cleaning +++"
    get_water(200)
    boil_water
    pour_coffee
    puts "+++ Finished! +++"
  end

  # protected     # only the class and its inheritants (classes)
                  # have access, but not the instances of any class

  private       # only the class have access inside itself

  # public        # free access for any instance of the class to the
                  # methods

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

class Cleaner
  def clean(machine)
    puts "--- Cleaning with cleaner ---"
    machine.get_water(200)
    machine.boil_water
    machine.pour_coffee
    puts "--- Cleaned! ---"
  end
end

class MachineCleaner < CoffeeMachine
  def clean(machine)
    puts "--- Cleaning with machine_cleaner ---"
    machine.get_water(200)
    machine.boil_water
    machine.pour_coffee
    puts "--- Cleaned! ---"
  end
end

saeco = CoffeeMachine.new

saeco.make_coffee

cleaner = Cleaner.new

machine_cleaner = MachineCleaner.new



saeco.clean                   # accessible in private, protected
                              # and public mode

machine_cleaner.clean(saeco)  # accessible in protected and public
                              # but not in pivate mode

# machine_cleaner.boil_water

cleaner.clean(saeco)          # accessible only in public mode

# saeco.boil_water