require_relative './person'
require_relative './BaseDecorator'
require_relative './CapitalizeDecorator'
require_relative './TrimmerDecorator'

person = Person.new(22, 'maximilianus')
person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
capitalized_person.correct_name
trimmed_person = TrimmerDecorator.new(capitalized_person)
trimmed_person.correct_name


# Test the decorators

puts "Original name: #{person.correct_name}"
puts "Capitalized name: #{capitalized_person.correct_name}"
puts "Trimmed name: #{trimmed_person.correct_name}"
