def Dutch_Algo(arr,n)
  low =0
  high =arr.length-1
  mid =0
  while(mid <= high)
    case arr[mid]
    when 0
      arr[low] , arr[mid] = arr[mid] , arr[low]
      low+=1
      mid+=1
    when 1
      mid+=1
    when 2
      arr[high] , arr[mid]= arr[mid], arr[high]
      high-=1
    end
  end
  return arr
end

print "Enter a number : "
n= gets.chomp.to_i
print "Enter #{n} elements : "
arr=gets.chomp.split.map{|x| x.to_i}
result=Dutch_Algo(arr,n)
puts "sorted term is => #{result}"