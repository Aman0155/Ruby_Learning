begin
  puts " Enter file path"
  path=gets.chomp
  file=File.read(path,"r")
rescue Errno::ENOENT => e
  puts" File not found"
  retry
rescue Errno::EACCES => e
  puts "Permession denied"
rescue Errno::EISDIR => e
  puts " Directory not found"
  ensure
    file.close if file
  end