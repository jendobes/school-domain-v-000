# code here!
require 'pry'
class School

  attr_reader :roster

  def initialize(roster)
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] = [] unless roster.include? grade
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
=begin  sorted = {}
    @roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end
=end

end

@school = School.new("playschool")

@school.add_student("Homer Simpson", 9)
@school.add_student("Bart Simpson", 9)
@school.add_student("Avi Flombaum", 10)
@school.add_student("Jeff Baird", 10)
@school.add_student("Blake Johnson", 7)
@school.add_student("Jack Bauer", 7)

binding.pry
