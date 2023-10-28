require_relative '../book_class'

describe('Tests for methods inside Book class:') do
  # Setup
  before :all do
    @object = Book.new('title', 'author')
  end
  it('Constructor should return a Book object.') do
    expect(@object).to(be_an_instance_of(Book))
  end
  it('Method add_rental should add Rental object to rentals array inside Book class.') do
    # Arrange
    rental = double('Rental')
    # Act
    @object.add_rental(rental)
    # Assert
    expect(@object.rentals).to(include(rental))
  end
  it('Method generate_string should return a hash with instance variables of Book class.') do
    # Arrange
    expected = { title: 'title', author: 'author' }
    # Act
    result = @object.generate_string
    # Assert
    expect(result).to(eq(expected))
  end
  it('Method parse_string should return a new Book object.') do
    # Arrange
    arguments = { 'title' => 'title', 'author' => 'author' }
    # Act
    object = Book.parse_string(arguments)
    # Assert
    expect(object).to(be_an_instance_of(Book))
  end
  it('Method input_arguments should return a new Book object.') do
    # Arrange
    allow($stdout).to(receive(:write))
    allow(Book).to(receive(:gets)).and_return('title', 'author')
    # Act
    object = Book.input_arguments
    # Assert
    expect(object).to(be_an_instance_of(Book))
  end
end
