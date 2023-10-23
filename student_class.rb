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

  def self.input_arguments(classroom)
    print 'Age: '
    age = gets.chomp
    print 'Name: '
    name = gets.chomp
    print 'Has parent permission? [Y/N]: '
    parent_permission = gets.chomp
    new(classroom, age, name, parent_permission)
  end
end
