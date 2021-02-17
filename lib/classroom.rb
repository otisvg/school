class Classroom
  attr_reader :students

  def initialize(lesson:)
    @lesson = lesson
    @students = []
  end

  def add(student)
    students << student
  end
end