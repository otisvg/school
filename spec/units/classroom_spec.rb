require "classroom"

describe Classroom do
  let(:lesson) { "Maths" }
  let(:classroom) { described_class.new(lesson: lesson) }
  let(:student) { double(:student) }
  describe "#add" do
    it "adds a student to the classroom" do
      classroom.add(student)
      expect(classroom.students.length).to eq 1
    end
  end
end