import system, macros, algorithm, tables, sets, lists, queues, intsets, critbits, sequtils, strutils, math, future, unicode
# Write code to reverse a C-Style String. (C-String means that “abcd” is represented as
# five characters, including the null character.)



#var abc = "Write code to reverse a C-Style String. (C-String means that “abcd” is represented as five characters, including the null character.)"

proc Ch1_2(s:string):string=
  # どれでも通る
  s.reversed().join()
  # join(reversed(s))
  # reversed(abc).join()



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
      Ch1_2("わたしまけましたわ") == "わたしまけましたわ"
      Ch1_2("なかきよのとおのねふりのみなめさめなみのりふねのおとのよきかな") == "なかきよのとおのねふりのみなめさめなみのりふねのおとのよきかな"
      Ch1_2("I am. I was.") == ".saw I .ma I"

  echo "suite teardown: run once after the tests"
