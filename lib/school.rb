require "clazs"

class School
  attr_reader :students, :clazses
  def initialize
    @students = []
    @clazses = []
  end

  def add_clazs(clazs, subject)
    clazses << clazs.create(subject)
  end

  def register(student)
    students << student.name
  end

  def assign_to_clazs(clazs, subject, student)
    clazs.add(student, subject)
  end

  def remove_student(clazs, subject, student)
    clazs.remove(student, subject)
  end
end
