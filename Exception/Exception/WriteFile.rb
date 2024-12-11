
begin
  puts " Enter file path"
  path=gets.chomp
  file=File.open(path,"w")
  file.puts"this is my file"
rescue => e
  puts "An error occured #{e.message}"
ensure
  file.close if file
  puts"file has been closed"
end
