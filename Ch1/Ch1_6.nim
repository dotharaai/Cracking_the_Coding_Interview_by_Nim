import system, macros, algorithm, tables, sets, lists, queues, intsets, critbits, sequtils, strutils, math, future

# Write a method to replace all spaces in a string with ‘%20’.
# bytes, write a method to rotate the image by 90 degrees. Can you do this in place?



type
  Image[N:static[int]] = array[1..N,array[1..N,int]]


proc Ch1_6(i:Image):Image=
  for x in 1..len(i):
    for y in 1..len(i):
      result[y][x] = i[x][y]

#
import unittest
suite "description for this stuff":
  echo "suite setup: run once before the tests"

  test "rotate":
    let image:Image[3] = [[1,2,3],[0,0,0],[0,0,0]]
    # give up and stop if this fails
    check:
      Ch1_6(image) == [[1,0,0],[2,0,0],[3,0,0]]

  echo "suite teardown: run once after the tests"
