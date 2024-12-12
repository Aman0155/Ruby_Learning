class Student
  attr_accessor :name, :age
  attr_reader :grades

  def initialize(name,age)
    @name=name
    @age=age
    @grade=[]
  end
  def add_grade(grade)
    if grade.is_a?(Numeric) && grade >=0 && grade <100
      @grade<<grade
    else
      puts" enter a valid grade input"
    end 
  end
  def calculate_average
    puts " Average is  #{@grade.sum/ @grade.length.to_f}"
  end
end
  student = Student.new(" MIGHTY RAJJUU", 20)

student.add_grade(50)
student.add_grade(90)
#student.add_grade(78)

puts "#{student.name} average grade: #{student.calculate_average}"


 
