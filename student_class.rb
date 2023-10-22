class Student < Person
  attr_reader :classroom

  def initialize(classroom, *arguments)
    @classroom = classroom
    classroom.add_student(self)
    super(*arguments)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
