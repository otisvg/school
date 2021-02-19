require "clazs"

describe Clazs do
  let(:lesson) { "Maths" }
  let(:clazs) { described_class.new }
  let(:student) { double(:student) }
  
  describe "#create" do
    it "creates a new clazs returning a hash" do
      new_clazs = {"Maths" => [] }
      expect(clazs.create(lesson)).to eq new_clazs
    end
  end

  describe "#add" do
    it "adds a student to the clazs" do
      clazs.add(student)
      expect(clazs.students.length).to eq 1
    end
  end
end