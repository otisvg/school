class School
  attr_reader :students
  def initialize
    @students = []
  end

  def register(student)
    students << student.name
  end

  def assign_to_clazs(clazs, student)
    
  end
end
