class Employee
  attr_accessor :name, :salary

  def initialize(name, salary)
    @name = name
    @salary = salary
  end

  def display_details
    puts "Employee name is #{@name} and his salary is #{@salary}"
  end
end

class Manager < Employee
  def initialize(name, salary)
    super(name, salary)
  end

  def give_bonus(amount)
    @salary += amount
    puts "#{@name}'s new salary after bonus is #{@salary}"
  end
end

class Developer < Employee
  def initialize(name, salary)
    super(name, salary)
  end

  def increase_salary(percentage)
    increase = (@salary * percentage) / 100
    @salary += increase
    puts "#{@name}'s new salary after a #{percentage}% increase is: #{@salary}"
  end
end


manager = Manager.new("Gaurav", 50000)
developer = Developer.new("Bobby", 40000)


manager.give_bonus(5000)
developer.increase_salary(10)


manager.display_details
developer.display_details
