require "school"

describe School do
  let(:classroom) { double(:classroom) }
  let(:name) { "Beca Galliano" }
  let(:student) { double(:student, name: name) }
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

  describe "#assign_to_classroom" do
    it "assigns students to classrooms" do
      school.register(student)
      expect(classroom).to receive(:add).at_most(1).times
      school.assign_to_classroom(student)
    end
  end
end
