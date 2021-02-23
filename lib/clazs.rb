class Clazs
  attr_reader :students, :lesson, :create

  def initialize
    @lesson = {}
  end

  def create(subject)
    lesson[:subject] = subject
    lesson[:students] = []
    lesson
  end

  def add(student, subject)
    lesson[:students] << student
  end

  def remove(student, subject)
    lesson[:students].delete(student)
  end
end
