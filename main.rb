require_relative 'nameable_class'
require_relative 'person_class'
require_relative 'student_class'
require_relative 'teacher_class'
require_relative 'decorator_class'
require_relative 'capitalize_class'
require_relative 'trimmer_class'

person = Person.new(22, 'maximilianus')
person.correct_name
capitalized_person = Capitalize.new(person)
puts capitalized_person.correct_name
capitalized_trimmed_person = Trimmer.new(capitalized_person)
puts capitalized_trimmed_person.correct_name
