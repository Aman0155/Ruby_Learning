def first_occurance(arr, target)
  left = 0
  right = arr.length - 1
  first_pos = -1

  while left <= right
    mid = (left + right) / 2
    if arr[mid] == target
      first_pos = mid
      right = mid - 1
    elsif arr[mid] < target
      left = mid + 1
    else
      right = mid - 1
    end
  end
  return first_pos
end

def last_occurance(arr, target)
  left = 0
  right = arr.length - 1
  last_pos = -1
  
  while left <= right
    mid = (left + right) / 2
    if arr[mid] == target
      last_pos = mid
      left = mid + 1
    elsif arr[mid] < target
      left = mid + 1
    else
      right = mid - 1
    end
  end
  return last_pos
end

def find_first_and_last(arr, target)
  first_pos = first_occurance(arr, target)
  if first_pos == -1
    return [-1, -1]
  end

  last_pos = last_occurance(arr, target)
  return [first_pos, last_pos]
end

print "Enter number of elements: "
n = gets.chomp.to_i
print "Enter #{n} elements: "
arr = gets.chomp.split.map { |x| x.to_i }

print "Enter the target element: "
target = gets.chomp.to_i

result = find_first_and_last(arr, target)
puts "First and Last Position: #{result}"
