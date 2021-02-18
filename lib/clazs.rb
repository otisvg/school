class Clazs
  attr_reader :students

  def initialize(name:)
    @name = name 
    @students = []
  end

  def add(student)
    students << student
  end
end