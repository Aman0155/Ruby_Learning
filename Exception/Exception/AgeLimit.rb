class AgeError < StandardError
  def initialize(message)
  super(message)
  end
end
begin
  puts "Enter Age"
  age=gets.chomp.to_i
  raise AgeError.new("the age should be between 18 and 100") if (age<18 || age>100)
  puts "Valid age"
rescue AgeError => e
  puts " Caught an Age Error :#{e.message} "
  retry
ensure
  puts"Your age :#{age}"
end
