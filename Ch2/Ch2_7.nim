import system, macros, algorithm, tables, sets, lists, queues, intsets, critbits, sequtils, strutils, math, future,strformat, unicode

# Intersection: Given two (singly) linked lists, determine if the two lists intersect. Return the intersecting node. Note that the intersection is defined based on reference, not value. That is, if the kth node of the first linked list is the exact same node (by reference) as the jth node of the second linked list, then they are intersecting.

import myarray

# O(N*M)で面白くない
proc Ch2_7(a,b:MyArray):MyArray=
  result = a
  block doubleloop:
    for ai in 0..<len(a):
      for bi in 0..<len(b):
        if a[ai].next == b[bi].next:
          result = a[ai].next
          break doubleloop


import unittest
when isMainModule:
  suite "MyArray":
    test "intersect":
      var share = MyArray(data:7)
      share.append(1)
      share.append(6)
      share.append(1)
      share.append(7)
      var a = MyArray(data:8)
      a.append(1)
      a[1].next = share[0]
      var b = MyArray(data:3)
      b.append(6)
      b.append(5)
      b.append(9)
      b[3].next = share[0]
      check:
        $Ch2_7(a,b) == $share
