require "school"

describe School do
  let(:clazs) { double(:clazs) }
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
      expect(school.students.first).to eq "Beca Galliano"
    end
  end

  describe "#assign_to_clazs" do
    it "assigns students to clazs" do
      school.register(student)
      expect(clazs).to receive(:add).at_most(1).times
      school.assign_to_clazs(student, clazs)
    end
  end
end
