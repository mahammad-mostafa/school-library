require_relative '../nameable_class'
require_relative '../decorator_class'
require_relative '../capitalize_class'

describe('Tests for methods inside Capitalize class:') do
  it('Method correct_name should return first character in string capitalized.') do
    # Arrange
    person = double('Person')
    allow(person).to(receive(:correct_name)).and_return('capital')
    # Act
    result = Capitalize.new(person).correct_name
    # Assert
    expect(result).to(eq('Capital'))
  end
end
