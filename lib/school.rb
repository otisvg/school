class School
  attr_reader :students
  def initialize
    @students = []
  end

  def register(student)
    students << student
  end
end