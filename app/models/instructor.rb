require 'pry'
require_relative './student.rb'
require_relative './boatingtest.rb'


class Instructor

    attr_reader :instructor_name
    @@all = []

    def initialize(instructor_name)
        @instructor_name = instructor_name
        @@all << self
    end

    def self.all
        @@all
    end

    def all_tests
        BoatingTest.all.select {|test| test.instructor == self}
    end


    def all_students
        self.all_tests.map {|test| test.student}
    end

    def passed_students
        passed_tests = self.all_tests.select{|test|test.test_status == "passed"}
        passed_tests.map{|test| test.student}
    end

    def find_student(name)
        Student.all.find{|student|student.student_name == name}
    end

    def find_test(test_name_param)
        BoatingTest.all.find {|test| test.test_name == test_name_param}
    end

    def pass_student(name, test_name) 
        test_name = find_test(test_name_param)
        if test && test.student.student_name == name
            test.test_status = "passed"
        else
            student = find_student(name)
       BoatingTest.new(student, test_name, "passed", self)
        end
    #    binding.pry
    end


    def fail_student(name, test_name) 
        test_name = find_test(test_name_param)
        if test && test.student.student_name == name
            test.test_status = "failed"
        else
            student = find_student(name)
            BoatingTest.new(student, test_name, "failed", self)
        end
    end

end


# `Instructor` class:
# X initialize with a instructor_name
# X`Instructor.all` should return all instructors
# X`Instructor#passed_students` should return an array of students who passed a boating test with this specific instructor.

# X`Instructor#pass_student` should take in a student instance and test instructor_name. If there is a `BoatingTest` whose 
    # instructor_name and student match the values passed in, this method should update the status of that BoatingTest to 'passed'. 
    # If there is no matching test, this method should create a test with the student, that boat test instructor_name, and the status 'passed'. 
    # Either way, it should return the `BoatingTest` instance.

# X `Instructor#fail_student` should take in a student instance and test instructor_name. Like `#pass_student`, it should try to find a matching 
    # `BoatingTest` and update its status to 'failed'. If it cannot find an existing `BoatingTest`, it should create one with the instructor_name, 
    # the matching student, and the status 'failed'.

# X`Instructor#all_students` should return an array of students who took a boating test with this specific instructor. 