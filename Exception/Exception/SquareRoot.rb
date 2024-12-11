begin 
  puts "Enter a number"
  number=gets.chomp
  number=Integer(number)
  if number < 0 
    raise RangeError, " Negative number please enter a valid input"
  end 
  result= Math.sqrt(number)
rescue ArgumentError => e
  puts " caught an argument #{e.message}"
  puts " Enter a valid input"
  retry
rescue RangeError => e
  puts " caught an unexpected error #{e.message}"
  retry
ensure
  puts"Result #{result} "
end


