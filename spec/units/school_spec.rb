require "school"

describe School do
  let(:lesson) { { "Maths" => [] } }
  let(:clazs) { double(:clazs, create: lesson) }
  let(:name) { "Beca Galliano" }
  let(:student) { double(:student, name: name) }
  let(:school) { described_class.new }

  describe "#add_clazs" do
    it "adds a clazs to the school" do
      expect(clazs).to receive(:create).at_most(1).times
      school.add_clazs(clazs, "Maths")
    end

    it "adds a clazs to the school" do 
      school.add_clazs(clazs, "Maths")
      maths = school.clazses.first
      expect(maths).to eq lesson
    end
  end

  describe "#register" do
    it "registers students to school" do
      school.register(student)
      students = school.students.length
      expect(students).to eq 1
    end
  end

  describe "#students" do
    it 'displays a list of students names' do 
      school.register(student)
      first_student = school.students.first
      expect(first_student).to eq "Beca Galliano"
    end
  end

  describe "#assign_to_clazs" do
    it "assigns students to clazs" do
      school.register(student)
      expect(clazs).to receive(:add).at_most(1).times
      school.assign_to_clazs(clazs, "Maths", student)
    end
  end
end
