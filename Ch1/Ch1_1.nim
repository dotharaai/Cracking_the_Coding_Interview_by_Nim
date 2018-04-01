import system, macros, algorithm, tables, sets, lists, queues, intsets, critbits, sequtils, strutils, math, future, unicode

# Is Unique: Implement an algorithm to determine if a string has all unique characters. What if you
# cannot use additional data structures?



proc Ch1_1(s:string):bool=
  let test:seq[Rune] = s.replace(" ","").toRunes()
  let sSet:HashSet[Rune] = toSet(test)
  len(sSet) == len(test)



import unittest

suite "description for this stuff":
  echo "suite setup: run once before the tests"

  setup:
    echo "run before each test"

  teardown:
    echo "run after each test"

  test "perfect pangram":
    # give up and stop if this fails
    check:
      Ch1_1("Blowzy night-frumps vex'd Jack Q.") == true
      Ch1_1("Cwm fjord veg balks nth pyx quiz.") == true
      Ch1_1("いろはにほへとちりぬるをわかよたれそつねならんうゐのおくやまけふこえてあさきゆめみしゑひもせす") == true


  test "not pangram":
    # print a nasty message and move on, skipping
    # the remainder of this block
    check:
      Ch1_1("This is not pangram") == false
      Ch1_1("これはパングラムではない") == false

  echo "suite teardown: run once after the tests"
