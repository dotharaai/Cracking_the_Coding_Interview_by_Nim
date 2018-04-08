import system, macros, algorithm, tables, sets, lists, queues, intsets, critbits, sequtils, strutils, math, future,strformat

# Delete Middle Node: Implement an algorithm to delete a node in the middle (i.e., any node but the first and last node, not necessarily the exact middle) of a singly linked list, given only access to that node.
# EXAMPLE
# Input: the node c from the linked list a - >b- >c - >d - >e- >f Result: nothing is returned, but the new linked list looks like a - >b- >d - >e- >f

import myarray

proc Ch2_3(c:var MyArray)=
  if c.next != nil:
    c.data = c.next.data
    c = c.next

#

import unittest
when isMainModule:
  suite "MyArray":
    test "append and $ work correctly":
      var a = MyArray(data:0)
      for i in 1..5:
        a.append(i)
      Ch2_3(a.next.next.next)
      check:
        $a == "0,1,2,4,5"
