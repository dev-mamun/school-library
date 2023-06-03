require_relative './module/person'
require_relative './decorators/base_decorator'
require_relative './decorators/capitalize_decorator'
require_relative './decorators/trimmer_decorator'
require_relative './module/student'
require_relative './classroom'
require_relative './module/rental'
require_relative './module/book'

# Create some instances of the classes
person = Person.new(25, 'John Doe')
student = Student.new(18, 'Jane Smith')
classroom = Classroom.new('Class A')
book = Book.new('The Great Gatsby', 'F. Scott Fitzgerald')

# Create a rental between the student and the book
rental = Rental.new('2023-05-20', book, student)

# Add a decorators to the person's name
decorated_person = CapitalizeDecorator.new(person)

# Trim the name of the decorated person
trimmed_person = TrimmerDecorator.new(decorated_person)

# Access the correct name of the trimmed person
correct_name = trimmed_person.correct_name

# Print the results
puts "Person name: #{person.name}" # Output: John Doe
puts "Student name: #{student.name}" # Output: Jane Smith
puts "Classroom label: #{classroom.label}" # Output: Class A
puts "Book title: #{book.title}" # Output: The Great Gatsby
puts "Rental date: #{rental.date}" # Output: 2023-05-20
puts "Decorated person name: #{decorated_person.correct_name}" # Output: JOHN DOE
puts "Trimmed person name: #{trimmed_person.correct_name}" # Output: JOHN DOE

puts "Correct name: #{correct_name}" # Output: JOHN DOE (trimmed to maximum of 10 characters)

# person = Person.new(22, 'maximilianus')
# person.correct_name
# capitalized_person = CapitalizeDecorator.new(person)
# capitalized_person.correct_name
# trimmed_person = TrimmerDecorator.new(capitalized_person)
# trimmed_person.correct_name
#
# # Test the decorators
#
# puts "Original name: #{person.correct_name}"
# puts "Capitalized name: #{capitalized_person.correct_name}"
# puts "Trimmed name: #{trimmed_person.correct_name}"
