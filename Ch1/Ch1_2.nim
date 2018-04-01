import system, macros, algorithm, tables, sets, lists, queues, intsets, critbits, sequtils, strutils, math, future

# Check Permutation:
# Given two strings, write a method to decide if one is a permutation of the　other.


proc Ch1_2(a,b:string):bool=
  sorted(a,cmp) == sorted(b,cmp)


#
import unittest
suite "description for this stuff":
  echo "suite setup: run once before the tests"

  setup:
    echo "run before each test"

  teardown:
    echo "run after each test"

  test "anagram":
    # give up and stop if this fails
    check:
      Ch1_2("abcd12","21dcab") == true
      Ch1_2("いながきごろう","ろうごながいき") == true
      Ch1_2("astronomer","moonstarer") == true

  test "not anagram":
    check:
      Ch1_2("not","anagram") == false
      Ch1_2("abcd","bcde") == false
      Ch1_2("abc","xyz") == false

  echo "suite teardown: run once after the tests"
