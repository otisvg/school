require "clazs"

describe Clazs do

  let(:subject) { "Maths" }
  let(:clazs) { described_class.new }
  let(:student) { double(:student) }
  
  describe "#create" do
    it "creates a new clazs returning a hash" do
      new_clazs = {subject => [] }
      expect(clazs.create(subject)).to eq new_clazs
    end
  end

  describe "#add" do
    it "adds a student to the clazs" do
      clazs.create(subject)
      clazs.add(student, subject)
      expect(clazs.lesson[subject].first).to eq student
    end
  end
end