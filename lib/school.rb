class School
  attr_reader :students, :clazses
  def initialize
    @students = []
    @clazses = []
  end

  def view
    students
  end

  def add_clazs(clazs, subject)
    raise "Error: Maths class already exists." unless in_clazses?(subject)
    clazses << clazs.create(subject)
  end

  def register(student)
    students << student.name
  end

  def assign_to_clazs(clazs, subject, student)
    raise "Error: student not registered." unless student?(student)
    clazs.add(student)
  end

  def remove_student(clazs, subject, student)
    raise "Error: #{student.name} is not in this class" unless in_clazs?(subject, student)

    clazs.remove(student)
  end

  private

  def student?(student)
    students.include?(student.name)
  end

  def in_clazs?(subject, student)
    clazses.each do |lesson|
      return lesson[:students].include?(student) if lesson[:subject] == subject
    end
  end

  def in_clazses?(subject)
    clazses.select do |lesson|
      return false if lesson[:subject] == subject 
    end
  end
end
