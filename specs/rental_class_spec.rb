require_relative '../rental_class'

describe('Tests for methods inside Rental class:') do
  it('Constructor should return a Rental object.') do
    # Arrange
    book = double('Book')
    person = double('Person')
    allow(book).to(receive(:add_rental))
    allow(person).to(receive(:add_rental))
    # Act
    object = Rental.new('2020-2-2', book, person)
    # Assert
    expect(object).to(be_an_instance_of(Rental))
  end
  it('Method generate_string should return a hash with instance variables of Rental class.') do
    # Arrange
    book = double('Book')
    person = double('Person')
    allow(book).to(receive(:add_rental))
    allow(person).to(receive(:add_rental))
    allow(book).to(receive(:generate_string)).and_return('book')
    allow(person).to(receive(:generate_string)).and_return('person')
    object = Rental.new('2020-2-2', book, person)
    expected = { date: '2020-2-2', book: 'book', person: 'person' }
    # Act
    result = object.generate_string
    # Assert
    expect(result).to(eq(expected))
  end
  it('Method parse_string should return a new Rental object.') do
    # Arrange
    classroom = { 'label' => 'Math' }
    book = { 'title' => 'title', 'author' => 'author' }
    person = { 'classroom' => classroom, 'age' => '14', 'name' => 'Test', 'parent_permission' => 'false', 'id' => '1',
               'type' => 'Student' }
    arguments = { 'date' => '2020-2-2', 'book' => book, 'person' => person }
    # Act
    object = Rental.parse_string(arguments)
    # Assert
    expect(object).to(be_an_instance_of(Rental))
  end
  it('Method input_arguments should return a new Rental object.') do
    # Arrange
    book = double('Book')
    person = double('Person')
    allow(book).to(receive(:add_rental))
    allow(person).to(receive(:add_rental))
    allow($stdout).to(receive(:write))
    allow(Rental).to(receive(:gets)).and_return('2020-2-2')
    # Act
    object = Rental.input_arguments(book, person)
    # Assert
    expect(object).to(be_an_instance_of(Rental))
  end
end
