loop do
  puts "enter a number"
num=gets.chomp.to_i
if num >1 && num <10
  puts "your number is #{num}"
  exit
else
  redo
end
end
