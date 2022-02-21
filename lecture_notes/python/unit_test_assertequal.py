# -*- coding: utf-8 -*-
"""
Created on Thu Apr  8 13:12:33 2021

@author: apt4c
"""

from unittest import TestCase

# check if two statements are equal
actual1 = 10 % 2 == 0
expected = True

# create TestCase object
tc = TestCase()

# run test to assert equality, printing the result
# the test passes, returning None
print(tc.assertEqual(actual1, expected))

# run a second test, with different answer
# this will fail and throw an error
actual2 = 10 % 2 == 1
print(tc.assertEqual(actual2, expected))


