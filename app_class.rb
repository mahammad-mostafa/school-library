require_relative 'nameable_class'
require_relative 'decorator_class'
require_relative 'capitalize_class'
require_relative 'trimmer_class'
require_relative 'person_class'
require_relative 'student_class'
require_relative 'teacher_class'
require_relative 'classroom_class'
require_relative 'book_class'
require_relative 'rental_class'

class App
  def initialize
    @books = []
    @people = []
    @rentals = []
    @classroom = Classroom.new('A')
  end

  def welcome_message
    puts ''
    puts 'Welcome to School Library App!'
  end

  def display_options
    puts ''
    puts 'Please choose an option by entering a number:'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
    puts ''
  end

  def close_messagge
    puts ''
    puts 'Thank you for using this app'
    puts ''
  end

  def handle_option(option)
    case option
    when '1'
      list_books
    when '2'
      list_people
    when '3'
      people_option
    when '4'
      create_book
    when '5'
      list_books(true)
      book = gets.chomp.to_i
      list_people(true)
      people = gets.chomp.to_i
      create_rental(book, people)
    when '6'
      list_rentals
    else
      puts 'Wrong number! Try again'
    end
  end

  def people_option
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    number = gets.chomp
    case number
    when '1'
      create_student
    when '2'
      create_teacher
    else
      puts 'Wrong number! Try again'
      people_option
    end
  end

  def list_books(indexed = false)
    return puts 'No available books!' if @books.empty?

    puts 'Select a book from the following list by number' if indexed
    index = 0
    @books.each do |book|
      print "#{index}) " if indexed
      puts "Title: \"#{book.title}\", Author: #{book.author}"
      index += 1
    end
  end

  def list_people(indexed = false)
    return puts 'No available people!' if @people.empty?

    puts 'Select a person from the following list by number (not id)' if indexed
    index = 0
    @people.each do |person|
      print "#{index}) " if indexed
      puts "[#{person.class}] Name: \"#{person.name}\", ID: #{person.id}, Age: #{person.age}"
      index += 1
    end
  end

  def create_student
    print 'Age: '
    age = gets.chomp
    print 'Name: '
    name = gets.chomp
    print 'Has parent permission? [Y/N]: '
    parent_permission = gets.chomp
    @people.append(Student.new(@classroom, age, name, parent_permission))
    puts 'Person created successfully'
  end

  def create_teacher
    print 'Age: '
    age = gets.chomp
    print 'Name: '
    name = gets.chomp
    print 'Specialization: '
    specialization = gets.chomp
    @people.append(Teacher.new(specialization, age, name))
    puts 'Person created successfully'
  end

  def create_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    @books.append(Book.new(title, author))
    puts 'Book created successfully'
  end

  def create_rental(book, person)
    print 'Date: '
    date = gets.chomp
    @rentals.append(Rental.new(date, @books[book], @people[person]))
    puts 'Rental created successfully'
  end

  def list_rentals
    puts 'No available rentals!' if @rentals.empty?
    print 'ID of person: '
    id = gets.chomp.to_i
    puts 'Rentals:'
    @rentals.each do |rental|
      puts "Date: #{rental.date}, Book \"#{rental.book.title}\" by #{rental.book.author}" if rental.person.id == id
    end
  end
end
