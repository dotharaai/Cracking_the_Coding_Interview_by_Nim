import system, macros, algorithm, tables, sets, lists, queues, intsets, critbits, sequtils, strutils, math, future

# Design an algorithm and write code to remove the duplicate characters in a string
# without using any additional buffer. NOTE: One or two additional variables are fine.
# An extra copy of the array is not.
# FOLLOW UP
# Write the test cases for this method.




proc Ch1_3(str:string):string=
  # 面白くないけどこれでできる。
  result = ""
  for s in str:
    if result.count(s) == 0:
      add(result, s)


import unittest
suite "description for this stuff":
  echo "suite setup: run once before the tests"

  setup:
    echo "run before each test"

  teardown:
    echo "run after each test"

  test "true":
    # give up and stop if this fails
    check:
      Ch1_3("abcd") == "abcd"
      Ch1_3("aaa") == "a"
      Ch1_3("aaabbb") == "ab"
      Ch1_3("") == ""

  echo "suite teardown: run once after the tests"
