class Animal 
  def make_sound
    raise NotImplementedError,"Subclass must implement make_sound method"
  end
def describe_animal
  puts " this is the animal #{self.class} and the sound is #{make_sound}"
end
end

class Dog < Animal
  def make_sound
    "woff"
  end
end

class Cat < Animal
  def make_sound
    "meow"
  end
end

dog =Dog.new
cat=Cat.new

dog.describe_animal
cat.describe_animal
