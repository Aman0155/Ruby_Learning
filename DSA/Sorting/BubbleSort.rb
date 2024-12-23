def bubble_sort(arr,n)
  for i in 0..n
    swapped=false
    for j in 0...n-i-1
      if arr[j]> arr[j+1]
        arr[j],arr[j+1] = arr[j+1],arr[j]
        swapped=true
      end
    end
    break unless swapped
  end
  return arr
end
print "Enter n: "
n = gets.chomp.to_i
print "Enter #{n} elements: "
arr = gets.chomp.split.map{|x| x.to_i}
arr=bubble_sort(arr,n)
puts arr.inspect