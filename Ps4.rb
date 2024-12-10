begin
  print "Enter a dividend and divisor"
  num,div=gets.chomp.split.map{|x| x.to_i}
  result=num/div
  puts "RESULT :#{result}"
rescue ZeroDivisonError=> e
  puts "ERROR : #{e.message}"
  retry
ensure
  puts " OPeration Done"
end