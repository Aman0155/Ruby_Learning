#Write a Ruby program that iterates through an array of numbers. 
#Stop the iteration when a number divisible by 7 is encountered and 
#print the numbers processed until that point.

number =gets.chomp.to_i
array=gets.chomp.split.map(&:to_i)

for i in 0..array.length
  if array[i]%7 == 0
    break
  end
  puts array[i]
end
