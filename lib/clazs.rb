class Clazs
  attr_reader :students, :lesson

  def initialize
    @lesson = {}
    @students = []
  end

  def create(subject)
    lesson[subject] = students
    lesson
  end

  def add(student)
    students << student
  end
end