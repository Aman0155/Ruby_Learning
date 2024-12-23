def binary_search(arr, target)
  low=0
  high=arr.length-1
  while low<=high
    mid=(low+high)/2
    if arr[mid]==target
      return mid
    elsif arr[mid]<target
      low=mid+1
    else arr[mid]>target
      high=mid-1
    end
  end
  return -1
end
arr=[1,2,3,4,5,6,7,8,9]
target=7
result = binary_search(arr, target)

if result != -1
  puts "Element found at index #{result}"
else
  puts "Element not found"
end