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
    clazses << clazs.create(subject)
  end

  def register(student)
    students << student.name
  end

  def assign_to_clazs(clazs, subject, student)
    raise "Error: student not registered." unless student?(student)

    clazs.add(student, subject)
  end

  def remove_student(clazs, subject, student)
    raise "Error: #{student.name} is not in this class" unless in_clazs?(subject, student)

    clazs.remove(student, subject)
  end

  private

  def student?(student)
    students.include?(student.name)
  end

  def in_clazs?(subject, student)
    clazses.each do |lesson|
      if lesson[:subject] == subject
        return lesson[:students].include?(student)
      end
    end
  end
end
