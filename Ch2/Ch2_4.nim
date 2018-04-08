import system, macros, algorithm, tables, sets, lists, queues, intsets, critbits, sequtils, strutils, math, future,strformat

# Partition: Write code to partition a linked list around a value x, such that all nodes less than x come before all nodes greater than or equal to x . lf x is contained within the list, the values of x only need to be after the elements less than x (see below) . The partition element x can appear anywhere in the "right partition"; it does not need to appear between the left and right partitions.
# EXAMPLE
# Input: 3 -> 5 -> 8 -> 5 - > 10 -> 2 -> 1 [partition = 5)
# Output: 3 -> 1 -> 2 -> 10 -> 5 -> 5 -> 8

import myarray

proc Ch2_4(a:MyArray,p:int):MyArray=
  result = MyArray(data:0)
  var
    l = MyArray(data:0)
    g = MyArray(data:0)
  for i in 0..<len(a):
    if a[i].data < p:
      l.append(a[i].data)
    else:
      g.append(a[i].data)
  echo l
  echo g
  result = l
  result[len(result)-1].next=g[1]
  result[0] = result[1]


#
import unittest
when isMainModule:
  suite "MyArray":
    test "EXAMPLE":
      var a = MyArray(data:3)
      a.append(5)
      a.append(8)
      a.append(5)
      a.append(10)
      a.append(2)
      a.append(1)
      check:
        $Ch2_4(a,5) == "3,2,1,5,8,5,10"
