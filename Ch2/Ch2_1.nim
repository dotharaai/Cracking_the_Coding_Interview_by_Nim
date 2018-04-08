import system, macros, algorithm, tables, sets, lists, queues, intsets, critbits, sequtils, strutils, math, future,strformat

# Remove Dups: Write code to remove duplicates from an unsorted linked list.
# FOLLOW UP
# How would you solve this problem if a temporary buffer is not allowed?

import myarray



proc Ch2_1(a:MyArray):MyArray=
  result = MyArray(data:a[0].data)
  for i in 1..<len(a):
    if result.find(a[i].data) == -1:
      result.append(a[i].data)




import unittest
when isMainModule:
  suite "MyArray":
    test "with duplicates":
      var a = MyArray(data:0)
      for i in 1..10:
        a.append(i mod 3)
      check:
        $Ch2_1(a) == "0,1,2"

    test "no duplicate":
      var a = MyArray(data:0)
      for i in 1..10:
        a.append(i)
      check:
        $Ch2_1(a) == "0,1,2,3,4,5,6,7,8,9,10"
