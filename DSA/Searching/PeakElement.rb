def Peak_Element(arr,n)
  return n-1
end
print"Enter a number :"
n=gets.chomp.to_i
print" Enter #{n} Elements :"
arr=gets.chomp.split.map{|x| x.to_i}
arr.sort!
result=Peak_Element(arr,n)
puts"this is the answer :#{result}"
