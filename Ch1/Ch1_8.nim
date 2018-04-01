import system, macros, algorithm, tables, sets, lists, queues, intsets, critbits, sequtils, strutils, math, future


# Write an algorithm such that if an element in an MxN matrix is 0, its entire row and
# column is set to 0.



type
  Matrix[W,H:static[int]] = array[1..W,array[1..H,int]]


proc Ch1_8(m:Matrix):Matrix=
  var m_row:array[1..len(m),int]
  var m_col:array[1..len(m[1]),int]
  var am = m
  for l in 1..len(m):
    for e in 1..len(m[l]):
      if m[l][e] == 0:
        m_row[l] = 1
        m_col[e] = 1
  for l in 1..len(am):
    for e in 1..len(am[l]):
      if m_row[l] == 1 or m_col[e] == 1:
        am[l][e]=0
  return am




import unittest
suite "description for this stuff":
  echo "suite setup: run once before the tests"


  test "no zero":
    # give up and stop if this fails
    let v:Matrix[4,4] = [[1,1,1,1],[1,2,1,1],[1,2,3,4],[1,2,3,4]]
    check:
      Ch1_8(v) == [[1,1,1,1],[1,2,1,1],[1,2,3,4],[1,2,3,4]]



  test "one zero":
    let v:Matrix[4,4] = [[0,1,1,1],[1,2,1,1],[1,2,3,4],[1,2,3,4]]
    check:
      Ch1_8(v) == [[0, 0, 0, 0], [0, 2, 1, 1], [0, 2, 3, 4], [0, 2, 3, 4]]

  test "some zeros":
    let v:Matrix[4,4] = [[0,1,1,1],[1,2,1,1],[1,2,3,4],[1,2,3,0]]
    check:
      Ch1_8(v) == [[0, 0, 0, 0], [0, 2, 1, 0], [0, 2, 3, 0], [0, 0, 0, 0]]




  echo "suite teardown: run once after the tests"
