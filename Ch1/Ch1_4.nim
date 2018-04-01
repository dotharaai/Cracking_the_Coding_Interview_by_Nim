import system, macros, algorithm, tables, sets, lists, queues, intsets, critbits, sequtils, strutils, math, future


# Write a method to decide if two strings are anagrams or not.


proc Ch1_4(a,b:string):bool=
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
      Ch1_4("abcd","dcab") == true
      Ch1_4("いながきごろう","ろうごながいき") == true
      Ch1_4("astronomer","moonstarer") == true

  test "not anagram":
    check:
      Ch1_4("not","anagram") == false
      Ch1_4("abcd","bcde") == false
      Ch1_4("abc","xyz") == false

  echo "suite teardown: run once after the tests"
