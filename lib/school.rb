require "clazs"

class School
  attr_reader :students, :clazses
  def initialize
    @students = []
    @clazses = []
  end

  def add_clazs(lesson)
    clazses << Clazs.create(lesson)
  end

  def register(student)
    students << student.name
  end

  def assign_to_clazs(clazs, student)
    
  end
end
