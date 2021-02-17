require "student"

describe "user stories" do
  let(:student) { Student.new }
  let(:school) { School.new }

  it "a student can join a school" do
    school.register(student)
    expect(school.students.length).to eq 1
  end
end
