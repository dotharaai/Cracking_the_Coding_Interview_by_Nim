import system, macros, algorithm, tables, sets, lists, queues, intsets, critbits, sequtils, strutils, math, future,strformat, unicode

# Loop Detection: Given a circular linked list, implement an algorithm that returns the node at the　beginning of the loop.
# DEFINITION
# Circular linked list: A (corrupt) linked list in which a node's next pointer points to an earlier node, so as to make a loop in the linked list.
# EXAMPLE
# Input: A -> B -> C -> 0 -> E - > C [the same C as earlier]
# Output: C

import myarray


proc Ch2_8(a:MyArray):MyArray=
  result = MyArray(data:100)
  var
    turtle=a[0]
    rabbit=turtle.next
  while true:
    if turtle.next == rabbit.next and turtle.data == rabbit.data:
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
