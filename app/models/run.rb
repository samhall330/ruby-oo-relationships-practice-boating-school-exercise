require 'pry'
require_relative './boatingtest.rb'
require_relative './student.rb'
require_relative './instructor.rb'

spongebob = Student.new("Spongebob")
patrick = Student.new("Patrick")
sam = Student.new("Sam")

 puff = Instructor.new("Ms.Puff")
 krabs = Instructor.new("Mr.Krabs")
 squidward = Instructor.new("Squidward")

 test_one = BoatingTest.new(spongebob, "Crash Test", "failed", puff)
 test_two = BoatingTest.new(patrick, "Parking", "pending", krabs)
 test_three = BoatingTest.new(sam, "Blinkers", "passed", krabs)

# squidward.all_tests
# krabs.all_students
# puff.passed_students
# krabs.pass_student("Patrick", "Stop Lights")
# sam.all_instructors

binding.pry
#  power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
#  power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)

binding.pry
0