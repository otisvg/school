describe "user stories" do
  let(:clazs) { Clazs.new }
  let(:student) { Student.new(name: "Beca Galliano") }
  let(:school) { School.new }

  it "adds a clazs to the school" do
    school.add_clazs("Maths")
    expect(school.clazses.length).to eq 1
  end

  it "a student can join a school" do
    school.register(student)
    expect(school.students.length).to eq 1
  end

  it 'a headteacher can see a list of students names' do
    school.register(student)
    expect(school.students).to eq ["Beca Galliano"]
  end

  it "students can be asigned to a clazs" do
    school.register(student)
    school.assign_to_clazs(clazs, student)
    expect{ clazs.students.length }.not_to raise_error
  end
end
