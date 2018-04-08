import system, macros, algorithm, tables, sets, lists, queues, intsets, critbits, sequtils, strutils, math, future,strformat, unicode


# Palindrome: Implement a function to check if a linked list is a palindrome.

import myarray

proc Ch2_6(a:MyArray):bool=
  result = true
  var reversed=MyArray(data:0)
  var t:MyArray
  for i in 0..<len(a):
    t=MyArray(data:a[i].data)
    t.next=reversed[0]
    reversed = t
  for i in 0..<len(a):
    if a[i].data != reversed[i].data:
      result = false


import unittest
when isMainModule:
  suite "MyArray":
    test "回文":
      var a = MyArray(data:7)
      a.append(1)
      a.append(6)
      a.append(1)
      a.append(7)
      check:
        Ch2_6(a) == true

    test "回文でない":
      var a = MyArray(data:6)
      a.append(1)
      a.append(7)
      a.append(9)
      a.append(5)
      check:
        Ch2_6(a) == false
