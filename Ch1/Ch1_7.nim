import system, macros, algorithm, tables, sets, lists, queues, intsets, critbits, sequtils, strutils, math, future

# Rotate Matrix: Given an image represented by an NxN matrix, where each pixel in the image is 4
# bytes, write a method to rotate the image by 90 degrees. Can you do this in place?


type
  Image[N:static[int]] = array[1..N,array[1..N,int]]


proc Ch1_7(i:var Image)=
  for x in 1..len(i):
    for y in 1..<x:
      swap(i[x][y],i[y][x])


import unittest
suite "description for this stuff":

  test "rotate":
    var image:Image[3] = [[1,2,3],[0,0,0],[0,0,0]]
    Ch1_7(image)
    # give up and stop if this fails
    check:
      image == [[1,0,0],[2,0,0],[3,0,0]]

  echo "suite teardown: run once after the tests"
