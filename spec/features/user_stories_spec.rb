describe "user stories" do
  let(:lesson) { "Maths" }
  let(:classroom) { Classroom.new(lesson: lesson) }
  let(:student) { Student.new(name: "Beca Galliano") }
  let(:school) { School.new }

  it "a student can join a school" do
    school.register(student)
    expect(school.students.length).to eq 1
  end

  it 'a headteacher can see a list of students names' do
    school.register(student)
    expect(school.students).to eq ["Beca Galliano"]
  end

  it "students can be asigned to a classroom" do
    school.register(student)
    school.assign_to_classroom(student)
    expect{ classroom.students.length }.not_to raise_error
  end
end
