class RuntimeError < StandardError
  def initialize(message)
    super(message)
  end
  end
  i=1
  begin 
    rng=Random.new
    number=rng.rand(1..3)
    if number!=1
      raise RuntimeError.new("could not connect")
    else
      puts "connected to server"
    end
  rescue RuntimeError => e
    puts "Error : #{e.message}"
    if i<=3
      puts "Trying again"
      i+=1
      retry
    else
      puts "connection failed"
      exit  
    end
  end
