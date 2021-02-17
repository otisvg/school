require 'student'

describe Student do 

  describe '#name' do
    it "stores the name of a student" do
      name = "Beca Galliano"
      student = Student.new(name: name)
      expect(student.name).to eq name
    end
  end
end