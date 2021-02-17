require "school"

describe School do
  let(:school) { described_class.new }
  let(:student) { double(:student) }

  describe ".register" do
    it "registers students to school" do
      school.register(student)
      expect(school.students.length).to eq 1
    end
  end
end