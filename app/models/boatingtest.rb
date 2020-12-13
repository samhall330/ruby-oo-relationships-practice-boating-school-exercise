

require 'pry'

require_relative './student.rb'
require_relative './instructor.rb'


class BoatingTest

    attr_reader :student, :test_name, :instructor
    attr_accessor :test_status

    @@all = []

    def initialize(student, test_name, test_status, instructor)
        @student = student
        @test_name = test_name
        @test_status = test_status
        @instructor = instructor
        @@all << self
    end
    
    def self.all
        @@all
    end
end

# `BoatingTest` class:
# * should initialize with Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
# * `BoatingTest.all` returns an array of all boating tests



