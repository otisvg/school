describe "user stories" do

  let(:subject) { "Maths" }
  let(:clazs) { Clazs.new }
  let(:student) { Student.new(name: "Beca Galliano") }
  let(:school) { School.new }

  it "adds a clazs to the school" do
    school.add_clazs(clazs, subject)
    expect(school.clazses.length).to eq 1
  end

  it "a student can join a school" do
    school.register(student)
    expect(school.students.length).to eq 1
  end

  it "adding an unregistered student to a class should raise an error" do
    expect { school.assign_to_clazs(clazs, subject, student) }.to raise_error("Error: student not registered.")
  end

  context "when a student is registered" do
    before(:each) do
      school.register(student)
    end

    it 'a headteacher can see a list of students names' do
      expect(school.view).to eq ["Beca Galliano"]
    end

    it "students can be asigned to a clazs" do
      school.add_clazs(clazs, subject)
      expect { school.assign_to_clazs(clazs, subject, student) }.not_to raise_error
    end

    it "removes students from a clazs" do
      school.add_clazs(clazs, subject)
      school.assign_to_clazs(clazs, subject, student)
      school.remove_student(clazs, subject, student) 
      expect(clazs.lesson[:students]).to eq []
    end
  end
end
