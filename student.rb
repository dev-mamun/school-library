require_relative './person'
class Student < Person
  attr_accessor :name, :classroom, :parent_permission

  def initialize(age, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students << self unless classroom.students.include?(self)
  end

  def add_rental(rental)
    @rentals << rental
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end
end
