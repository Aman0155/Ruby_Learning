def risky_operation(value)
  result = 100 / value
  puts "The result of division is #{result}"
end

def get_user_input
  print "Enter a number: "
  user_input = gets.chomp
  return user_input.to_i
end

begin
  user_value=get_user_input
  risky_operation(user_value)
  
rescue 
   ZeroDivisionError => e
   puts " Error please enter a valid number"
else
  puts " Operation completed sucessfully"
ensure
  puts " thankyou for using the program"
end
