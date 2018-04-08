import system, macros, algorithm, tables, sets, lists, queues, intsets, critbits, sequtils, strutils, math, future,strformat, unicode


# Sum Lists: You have two numbers represented by a linked list, where each node contains a single digit. The digits are stored in reverse order, such that the 1 's digit is at the head of the list. Write a function that adds the two numbers and returns the sum as a linked list.
# EXAMPLE
# Input: (7-> 1 -> 6) + (5 -> 9 -> 2) .That is,617 + 295.
# Output: 2 - > 1 - > 9. That is, 912.
# FOLLOW UP
# Suppose the digits are stored in forward order. Repeat the above problem.
# Input: (6 -> 1 -> 7) + (2 -> 9 -> 5).Thatis,617 + 295.
# Output: 9 - > 1 - > 2. That is, 912 .v
import myarray

proc Ch2_5(a,b:MyArray):MyArray=
  result = MyArray(data:0)
  var
    anum:int=0
    bnum:int=0
  for i in 0..<len(a):
    anum += a[i].data*10^i
  for i in 0..<len(b):
    bnum += b[i].data*10^i

  for l in (anum+bnum).intToStr.reversed:
    result.append(($l).parseInt())

  # [](空の配列)が用意できなかったので……。
  result[0] = result[1]



proc Ch2_5_F(a,b:MyArray):MyArray=
  result = MyArray(data:0)
  var
    anum:int=0
    bnum:int=0
  for i in 0..<len(a):
    anum += a[i].data*10^(len(a)-i-1)
  for i in 0..<len(b):
    bnum += b[i].data*10^(len(b)-i-1)

  for l in (anum+bnum).intToStr:
    result.append(($l).parseInt())

  # [](空の配列)が用意できなかったので……。
  result[0] = result[1]

import unittest
when isMainModule:
  suite "MyArray":
    test "基本問題":
      var a = MyArray(data:7)
      a.append(1)
      a.append(6)
      var b = MyArray(data:5)
      b.append(9)
      b.append(2)
      check:
        $Ch2_5(a,b) == "2,1,9"

    test "FOLLOWUP":
      var a = MyArray(data:6)
      a.append(1)
      a.append(7)
      var b = MyArray(data:2)
      b.append(9)
      b.append(5)
      check:
        $Ch2_5_F(a,b) == "9,1,2"
