require_relative '../student_class'

describe('Tests for methods inside Student class:') do
  it('Constructor should return a Student object.') do
    # Arrange
    classroom = double('Classroom')
    allow(classroom).to(receive(:add_student))
    # Act
    object = Student.new(classroom, 14, 'student')
    # Assert
    expect(object).to(be_an_instance_of(Student))
  end
  it('Method play_hooky should return a string shape.') do
    # Arrange
    classroom = double('Classroom')
    allow(classroom).to(receive(:add_student))
    # Act
    result = Student.new(classroom, 14).play_hooky
    # Assert
    expect(result).to(eq('¯\(ツ)/¯'))
  end
  it('Method generate_string should return a hash with instance variables of Student class.') do
    # Arrange
    classroom = double('Classroom')
    allow(classroom).to(receive(:add_student))
    allow(classroom).to(receive(:label)).and_return('Math')
    allow(classroom).to(receive(:generate_string)).and_return({ label: 'Math' })
    # Act
    result = Student.new(classroom, 14, 'student', false, 1).generate_string
    expected = { classroom: { label: 'Math' }, id: 1, age: 14, name: 'student', parent_permission: false,
                 type: 'Student' }
    # Assert
    expect(result).to(eq(expected))
  end
  it('Method parse_string should return a new Student object.') do
    # Arrange
    arguments = { 'classroom' => { 'label' => 'label' }, 'age' => '14', 'name' => 'student' }
    # Act
    object = Student.parse_string(arguments)
    # Assert
    expect(object).to(be_an_instance_of(Student))
  end
  it('Method input_arguments should return a new Student object.') do
    # Arrange
    classroom = double('Classroom')
    allow(classroom).to(receive(:add_student))
    allow(classroom).to(receive(:label)).and_return('Math')
    allow(Student).to(receive(:gets)).and_return('14', 'student', 'n')
    allow($stdout).to(receive(:write))
    # Act
    object = Student.input_arguments(classroom)
    # Assert
    expect(object).to(be_an_instance_of(Student))
  end
end
