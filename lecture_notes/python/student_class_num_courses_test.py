# -*- coding: utf-8 -*-
"""
Created on Mon Apr 12 12:00:51 2021

@author: apt4c
"""

# File: student_class_num_courses_test.py
# DS 5100
# Topic:
#    - Unit testing / debugging code
#    - Testing Student class
#
# Purpose:
#    - Testing enrollInCourse() method in Student class to see
#      if the "num_courses" attribute is correctly incremented

## Note: the following is an example of ONE unit test 


import unittest


class Student:
    
    # constructor
    def __init__(self, name, courses=None):
        self.name = name # string type
        self.courses = [] if courses is None else courses # list of strings
        self.num_courses = len(self.courses)
        
    # enroll in a course
    def enrollInCourse(self, cname): 
        self.courses.append(cname)
        self.num_courses += 1 # increment the number of courses

# TRY FOR YOURSELF
# 1) For practice, create some students and examine their attributes
# Create student 1, passing name, courses.
# Create student 2, passing name but no courses
# For each student, print: name, courses, num_courses of each to verify correctness.


# 2) Review the unit test below. It tests enrollInCourse() method in Student class.

#    First we create a class to run the test case.
#    It uses the functionality from unittest.TestCase 
#    (the terminology is that is inherits from unittest.TestCase)

class EnrollInTestCase(unittest.TestCase): 
    
    def test_is_numCoursincremented_correctly(self):
        # test if enrollInCourse() method successfully increments the
        # num_courses attribute of the Student object 

        # Create student instance, adding some courses
        student1 = Student('Katherine', ['DS 5100'])
        student1.enrollInCourse("CS 5050")
        student1.enrollInCourse("CS 5777")
        print(student1.courses)
        print(student1.num_courses)
        
        # Test
        expected = 3
        # unittest.TestCase brings in the assertEqual() method
        self.assertEqual(student1.num_courses, expected)

# 3) Run the entire file from this console, checking for OK result.
# 4) Run the file from terminal (e.g. Anaconda Prompt), checking for OK result.

# Next you will change the variable: expected, to get a failing result
# 5) Run the entire file from this console, checking for failing result. 
# 6) Run the entire file from terminal, checking for failing result. 

# 7) Lastly, you will remove "test_" from the method test_is_numCoursincremented_correctly()
# and rerun the script. What do you observe?

if __name__ == '__main__':
    unittest.main()            