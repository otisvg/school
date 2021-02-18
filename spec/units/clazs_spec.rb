require "clazs"

describe Clazs do
  let(:name) { "Maths" }
  let(:clazs) { described_class.new(name: name) }
  let(:student) { double(:student) }
  
  describe "#add" do
    it "adds a student to the clazs" do
      clazs.add(student)
      expect(clazs.students.length).to eq 1
    end
  end
end