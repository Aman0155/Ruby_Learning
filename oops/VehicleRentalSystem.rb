class Vehicle
  def calculate_rent(days)
    raise NotImplementedError, "Subclass must implement the calculate_rent method"
  end
end

class Car < Vehicle
  def initialize
    @rate_per_day = 20
  end

  def calculate_rent(days)
    @rate_per_day * days
  end
end

class Bike < Vehicle
  def initialize
    @rate_per_day = 10
  end

  def calculate_rent(days)
    @rate_per_day * days
  end
end

car = Car.new
puts "Car rent for 5 days: #{car.calculate_rent(5)}"

bike = Bike.new
puts "Bike rent for 5 days: #{bike.calculate_rent(5)}"
