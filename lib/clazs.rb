class Clazs
  attr_reader :students, :lesson, :create

  def initialize
    @lesson = {}
  end

  def create(subject)
    lesson[subject] = []
    lesson
  end

  def add(student, subject)
    lesson[subject] << student
  end
end