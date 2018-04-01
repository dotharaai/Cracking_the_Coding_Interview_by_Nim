import system, macros, algorithm, tables, sets, lists, queues, intsets, critbits, sequtils, strutils, math, future

# Write a method to replace all spaces in a string with ‘%20’.


proc Ch1_5(s:string):string=
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
      Ch1_5("abcd") == "abcd"
      Ch1_5("Write a method to replace all spaces in a string with ‘%20’.") == "Write%20a%20method%20to%20replace%20all%20spaces%20in%20a%20string%20with%20‘%20’."
      Ch1_5("I am. I was.") == "I%20am.%20I%20was."


  echo "suite teardown: run once after the tests"
