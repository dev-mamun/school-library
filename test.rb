require_relative './person'
require_relative './base_decorator'
require_relative './capitalize_decorator'
require_relative './trimmer_decorator'

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
