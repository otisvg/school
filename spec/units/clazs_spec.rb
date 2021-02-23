require "clazs"

describe Clazs do

  let(:subject) { "Maths" }
  let(:clazs) { described_class.new }
  let(:student) { double(:student) }
  
  describe "#create" do
    it "creates a new clazs returning a hash" do
      lesson = {:subject => "Maths", :students => [] }
      maths = clazs.create(subject)
      expect(maths).to eq lesson
    end
  end

  describe "#add" do
    it "adds a student to the clazs" do
      clazs.create(subject)
      clazs.add(student, subject)
      first_student = clazs.lesson[:students].first
      expect(first_student).to eq student
    end
  end
end