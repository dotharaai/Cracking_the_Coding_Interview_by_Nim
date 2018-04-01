import system, macros, algorithm, tables, sets, lists, queues, intsets, critbits, sequtils, strutils, math, future

# Assume you have a method isSubstring which checks if one word is a substring of
# another. Given two strings, s1 and s2, write code to check if s2 is a rotation of s1 using
# only one call to isSubstring (i.e., “waterbottle” is a rotation of “erbottlewat”).



proc Ch1_9(s1,s2:string):bool=
  len(s1)==len(s2) and repeat(s1,2).contains(s2)


import unittest
suite "description for this stuff":
  echo "suite setup: run once before the tests"

  setup:
    echo "run before each test"

  teardown:
    echo "run after each test"

  test "substring":
    # give up and stop if this fails
    check:
      Ch1_9("waterbottle", "terbottlewa") == true
      Ch1_9("waterbottle","ttlewaterbo") == true
      Ch1_9("abc","abcabc") == false
      Ch1_9("abcabc","abc") == false
      Ch1_9("","") == true

  echo "suite teardown: run once after the tests"
