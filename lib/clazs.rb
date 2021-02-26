class Clazs
  attr_reader :students, :lesson

  def initialize
    @lesson = {}
  end

  def create(subject)
    
    lesson[:subject] = subject
    lesson[:students] = []
    lesson
  end

  def add(student)
    lesson[:students] << student
  end

  def remove(student)
    lesson[:students].delete(student)
  end
end
