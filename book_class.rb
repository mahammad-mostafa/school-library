class Book
  attr_accessor :title, :author
  attr_reader :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(rental)
    @rentals.append(rental) unless @rentals.include?(rental)
  end

  def self.input_arguments
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    new(title, author)
  end
end
