class Teacher < Person
  def initialize(specialization, *arguments)
    @specialization = specialization
    super(*arguments)
  end

  def can_use_services?
    true
  end

  def self.input_arguments
    print 'Age: '
    age = gets.chomp
    print 'Name: '
    name = gets.chomp
    print 'Specialization: '
    specialization = gets.chomp
    new(specialization, age, name)
  end
end
