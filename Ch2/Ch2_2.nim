import system, macros, algorithm, tables, sets, lists, queues, intsets, critbits, sequtils, strutils, math, future,strformat

# Implement an algorithm to find the kth to last element of a singly linked list.

import myarray


proc Ch2_2(a:MyArray,k:int):MyArray=
  # k<len(a)とする
  # これは空配列[]が表現できなかった都合上である
  result = MyArray(data:a[k].data)
  for i in (k+1)..<len(a):
      result.append(a[i].data)

proc Ch2_2_remake(a:MyArray,k:int):MyArray=
  # 後ろ方向へは連結しているのでk番目を先頭にすればよい
  result = a[k]




import unittest
when isMainModule:
  suite "MyArray":
    test "k=0":
      var a = MyArray(data:0)
      for i in 1..10:
        a.append(i)
      check:
        $Ch2_2(a,0) == "0,1,2,3,4,5,6,7,8,9,10"
    test "k>0":
      var a = MyArray(data:0)
      for i in 1..10:
        a.append(i)
      check:
        $Ch2_2(a,8) == "8,9,10"
