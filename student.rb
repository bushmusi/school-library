require './person'

class Student < Person
  attr_reader :classroom

  def initialize(classroom)
    super(age, name, parent_permission)
    self.classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

  def classroom=(new_classroom)
    @classroom.remove_student(self) unless @classroom.nil? || @classroom == new_classroom

    @classroom = new_classroom
    @classroom.add_student(self) unless @classroom.students.include?(self)
  end
end
