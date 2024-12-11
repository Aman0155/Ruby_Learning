begin 
  print "Enter a number "
  a,b =gets.chomp.split
  a=Integer(a)
  b=Integer(b)
  result = a/b
  puts " RESULT =#{result}"

  rescue ArgumentError => e
    puts "Caught an argument error #{e.message}"
    retry 
  rescue ZeroDivisionError => e
    puts " caught a zeroDivisionError #{e.message}"
    retry
  ensure
    puts " operation completed"
  end

