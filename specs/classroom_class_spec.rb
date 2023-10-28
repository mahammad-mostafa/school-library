require_relative '../classroom_class'
​
describe('Tests for methods inside Classroom class:') do
  # Setup
  before :all do
    @object = Classroom.new('label')
  end
  it('Constructor should return a Classroom object.') do
    expect(@object).to(be_an_instance_of(Classroom))
  end
  it('Method add_student should add Student object to students array inside Classroom class.') do
    # Arrange
    student = double('Student')
    # Act
    @object.add_student(student)
    # Assert
    expect(@object.students).to(include(student))
  end
  it('Method generate_string should return a hash with instance variables of Classroom class.') do
    # Arrange
    expected = { label: 'label' }
    # Act
    result = @object.generate_string
    # Assert
    expect(result).to(eq(expected))
  end
  it('Method parse_string should return a new Classroom object.') do
    # Arrange
    arguments = { 'label' => 'label' }
    # Act
    object = Classroom.parse_string(arguments)
    # Assert
    expect(object).to(be_an_instance_of(Classroom))
  end
end
