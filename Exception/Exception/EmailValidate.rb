class InvalidEmailError < StandardError
  def initialize(message)
  super(message)
  end
end

def validate_email(input)
  pattern =/^[a-zA-Z0-9.to_i=%]+@[a-zA-Z0-9._]+\.[a-zA-Z]{2,}$/
  if input.match?(pattern)
    puts"valid email#{input}"
  else
    raise InvalidEmailError.new("Invalid Email")
begin
  puts "Enter a email"
  email =gets.chomp
  puts validateEmail(email)
rescue InvalidEmailError => e
  puts "Error : #{e.message}"
  puts " Enter a valid email"
  retry
ensure
  puts " operation completed"
end 