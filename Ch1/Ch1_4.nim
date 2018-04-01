import system, macros, algorithm, tables, sets, lists, queues, intsets, critbits, sequtils, strutils, math, future,unicode

# Palindrome Permutation: Given a string, write a function to check if it is a permutation of a palin-
# drome. A palindrome is a word or phrase that is the same forwards and backwards. A permutation
# is a rea rrangement of letters. The palindrome does not need to be limited to just dictionary words.


proc Ch1_4(s:string):bool=
  var odd = 0
  for l in s.replace(" ","").toRunes().toSet():
    if s.toRunes().count(l) mod 2 == 1:
      odd = odd + 1
  # 並びかえて回文（Permutation）になるような文字列は、各文字が偶数回出現するか、１種類を覗いて偶数回出現する場合、回文にできる
  return odd<=1



#
import unittest
suite "description for this stuff":
  echo "suite setup: run once before the tests"

  test "true":
    # give up and stop if this fails
    check:
      Ch1_4("aaa")
      Ch1_4("abcdcba") == true
      Ch1_4("わたしわたがし") == true


  test "not anagram":
    check:
      Ch1_4("not anagram") == false
      Ch1_4("abcd") == false
      Ch1_4("abc") == false

  echo "suite teardown: run once after the tests"
