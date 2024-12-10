def find_string_index(arr, target)
  arr.each_with_index do |str, index|
    return index if str == target
  end
  -1
end
arr = gets.chomp.split.map
target = gets.chomp
index = find_string_index(arr, target)
puts index 

