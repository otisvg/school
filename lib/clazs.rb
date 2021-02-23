class Clazs
  attr_reader :students, :lesson, :create

  def initialize
    @lesson = {}
  end
  # {"Maths" => []}
  # {:subject => "Maths", :students => []}

  def create(subject)
    lesson[:subject] = subject
    lesson[:students] = []
    lesson
  end

  def add(student, subject)
    lesson[:students] << student
  end
end