require "school"

describe School do
  let(:lesson) { { subject: "Maths", students: [] } }
  let(:clazs) { double(:clazs, create: lesson, remove: student) }
  let(:name) { "Beca Galliano" }
  let(:student) { double(:student, name: name) }
  let(:school) { described_class.new }
  let(:subject) { "Maths" }

  context "when a student is unregistered" do
    describe "assign_to_clazs" do
      it "raises an error if an unregistered student is added to a clazs" do
        expect { school.assign_to_clazs(clazs, subject, student) }.to raise_error("Error: student not registered.")
      end
    end
  
    describe "#add_clazs" do
      it "adds a clazs to the school" do
        expect(clazs).to receive(:create).at_most(1).times
        school.add_clazs(clazs, subject)
      end

      it "adds a clazs to the school" do 
        school.add_clazs(clazs, subject)
        maths = school.clazses.first
        expect(maths).to eq lesson
      end
    end
  end

  context "when a student is registered" do
    before(:each) do
      school.register(student)
    end

    describe "#register" do
      it "registers students to school" do
        students = school.students.length
        expect(students).to eq 1
      end
    end

    describe "#students" do
      it 'displays a list of students names' do 
        first_student = school.view.first
        expect(first_student).to eq "Beca Galliano"
      end
    end

    describe "#assign_to_clazs" do
      it "assigns students to clazs" do
        expect(clazs).to receive(:add).at_most(1).times
        school.assign_to_clazs(clazs, "Maths", student)
      end
    end

    describe "#remove_student" do
      it "removes a student from the clazs" do
        expect(clazs).to receive(:remove).at_most(1).times
        school.remove_student(clazs, subject, student)
      end

      it "raises an error if the student is not in the clazs" do
        student2 = Student.new(name: "Otis")
        school.add_clazs(clazs, subject)
        expect { school.remove_student(clazs, subject, student2) }.to raise_error("Error: Otis is not in this class")
      end

      it "raises an error if same instance of a clazs is added to a school" do
        school.add_clazs(clazs, subject)
        expect {school.add_clazs(clazs, subject) }. to raise_error("Error: Maths class already exists.")
      end
    end
  end
end
