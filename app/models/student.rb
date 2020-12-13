require 'pry'
require_relative './instructor.rb'
require_relative './boatingtest.rb'

class Student

    attr_accessor :student_name

    @@all = []

    def initialize(student_name)
        @student_name = student_name
        @@all << self
    end

    def self.all
        @@all
    end

    def all_tests
        BoatingTest.all.select{|test| test.student == self}
    end

    def all_instructors
        self.all_tests.map{|test| test.instructor}
    end

    def add_boating_test(boating_test_name, boating_test_status, instructor)
        BoatingTest.new(self, boating_test_name, boating_test_status, instructor)
    end

    def find_student(name)
        Student.all.find{|student|student.student_name == name}
    end

end


# `Student` class:
# X should initialize with `first_name`
# X `Student.all` should return all of the student instances
# X `Student#add_boating_test` should initialize a new boating test with a Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object). 
# X`Student#all_instructors` should return an array of instructors with whom this specific student took a boating test.
# X `Student.find_student` will take in a first name and output the student (Object) with that name
# * `Student#grade_percentage` should return the percentage of tests that the student has passed, a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float `33.33`)

