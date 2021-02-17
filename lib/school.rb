class School
  attr_reader :students
  def initialize
    @students = []
  end

  def register(student)
    students << student.name
  end

  def assign_to_classroom(student)

  end
end
