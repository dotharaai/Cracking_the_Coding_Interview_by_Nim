import system, macros, algorithm, tables, sets, lists, queues, intsets, critbits, sequtils, strutils, math, future


# URLify:
# Write a method to replace all spaces in a string with '%20: You may assume that the string
# has sufficient space at the end to hold the additional characters, and that you are given the "true"
# length of the string. (Note: If implementing in Java, please use a character array so that you can
# perform this operation in place.)


proc Ch1_3(s:string):string=
  replace(s," ",by="%20")


import unittest

suite "description for this stuff":
  echo "suite setup: run once before the tests"

  setup:
    echo "run before each test"

  teardown:
    echo "run after each test"

  test "test":
    # give up and stop if this fails
    check:
      Ch1_3("abcd") == "abcd"
      Ch1_3("Write a method to replace all spaces in a string with ‘%20’.") == "Write%20a%20method%20to%20replace%20all%20spaces%20in%20a%20string%20with%20‘%20’."
      Ch1_3("I am. I was.") == "I%20am.%20I%20was."


  echo "suite teardown: run once after the tests"
