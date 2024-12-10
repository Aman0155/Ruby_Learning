names=["Alice","bob","happy","exit"]
catch :name_found do
  names.each do|name|
    if name=="exit"
      puts "The name 'exit'was found"
      throw :name_found
    end
    puts "name #{name}"
  end
end

puts"processing has been stopped"