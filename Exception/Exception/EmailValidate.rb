class InvalidEmailError < StandardError
  def initialize(message)
    super(message)
  end
end

def validate_email(input)
  pattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/
  if input.match?(pattern)
    puts "Valid email: #{input}"
  else
    raise InvalidEmailError.new("Invalid Email")
  end
end

begin
  puts "Enter an email:"
  email = gets.chomp
  validate_email(email)
rescue InvalidEmailError => e
  puts "Error: #{e.message}"
  puts "Enter a valid email"
  retry
ensure
  puts "Operation completed"
end
