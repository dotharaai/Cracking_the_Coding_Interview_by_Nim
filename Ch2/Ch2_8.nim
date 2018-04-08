import system, macros, algorithm, tables, sets, lists, queues, intsets, critbits, sequtils, strutils, math, future,strformat, unicode

# Intersection: Given two (singly) linked lists, determine if the two lists intersect. Return the intersecting node. Note that the intersection is defined based on reference, not value. That is, if the kth node of the first linked list is the exact same node (by reference) as the jth node of the second linked list, then they are intersecting.

import myarray

# O(N*M)で面白くない
proc Ch2_8(a:MyArray):MyArray=
  result = MyArray(data:100)
  var
    turtle=a[0]
    rabbit=turtle.next
  echo "段階1"
  while true:
    if turtle.next == rabbit.next and turtle.data == rabbit.data:
      echo "段階２"
      turtle = a[0]
      rabbit = rabbit.next
      while true:
        if turtle.next == rabbit.next and turtle.data == rabbit.data:
          result = rabbit
          break
        else:
          rabbit = rabbit.next
          turtle = turtle.next
      break
    else:
      turtle = turtle.next
      rabbit = rabbit.next
      if turtle != nil and rabbit != nil:
        rabbit = rabbit.next
      else:
        break



import unittest
when isMainModule:
  suite "MyArray":
    test "has loop":
      var a = MyArray(data:0)
      var s = 354
      for i in 0..500:
        a.append(i)
      a[len(a)-1].next=a[s]
      var t = Ch2_8(a)
      check:
        t.data == a[s].data
