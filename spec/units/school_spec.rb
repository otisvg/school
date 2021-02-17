require "school"

describe School do

  let(:name) {"Beca Galliano"}
  let(:student) { double(:student, name: name)}
  let(:school) { described_class.new }

  describe "#register" do
    it "registers students to school" do
      school.register(student)
      expect(school.students.length).to eq 1
    end
  end

  describe "#students" do
    it 'displays a list of students names' do 
      school.register(student)
      expect(school.students).to eq [name]
    end
  end
end