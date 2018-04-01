import system, macros, algorithm, tables, sets, lists, queues, intsets, critbits, sequtils, strutils, math, future

# String Compression: Implement a method to perform basic string compression using the counts
# of repeated characters. For example, the string aabcccccaaa would become a2b1c5a3. If the
# "compressed" string would not become smaller than the original string, your method should return
# the original string. You can assume the string has only uppercase and lowercase letters (a - z).



proc Ch1_6(str:string):string=
  result = ""
  var l:char
  var c=1
  for i in 0..len(str)-1:
    l = str[i]
    if str[i] == str[i+1]:
      c+=1
    else:
      result.add(l&intToStr(c))
      c=1

  if len(result) < len(str):
    return result
  else:
    return str

import unittest

suite "description for this stuff":
  echo "suite setup: run once before the tests"

  setup:
    echo "run before each test"

  teardown:
    echo "run after each test"

  test "no repetation":
    check:
      Ch1_6("abcd") == "abcd"
      Ch1_6("bkbhere") == "bkbhere"

  test "some repetations":
    check:
      Ch1_6("aaa") == "a3"
      Ch1_6("aabbbccc") == "a2b3c3"
      Ch1_6("URRRRRRYYYYYYYYYY!!!!!!!!!") == "U1R6Y10!9"


  echo "suite teardown: run once after the tests"
