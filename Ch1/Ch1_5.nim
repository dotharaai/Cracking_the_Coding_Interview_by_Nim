import system, macros, algorithm, tables, sets, lists, queues, intsets, critbits, sequtils, strutils, math, future

# One Away: There are three types of edits that can be performed on strings: insert a character,
# remove a character, or replace a character. Given two strings, write a function to check if they are
# one edit (or zero edits) away.



proc printTable(table:seq):string=
  result = ""
  for line in table:
    for e in line:
      result.add(align(intToStr(e),3)&",")
    result.add("\n")


proc Ch1_5(a,b:string):bool=
  # これだけ難しくないですか？？
  var table:seq[seq[int]]=newSeq[seq[int]](len(a))
  var table_back: seq[seq[int]]=newSeq[seq[int]](len(a))
  let cost_mismatch = 1
  let cost_slice = 1
  table.fill(newSeq[int](len(b)))
  for i in 0..len(table)-1:
    table[i].fill(99)

  for ai in 0..len(table)-1:
    table[ai][0] = cost_slice * abs(ai-0)
  for bi in 0..len(table[0])-1:
    table[0][bi] = cost_slice * abs(0-bi)


  for ai in 1..len(table)-1:
    for bi in 1..len(table[0])-1:
      table[ai][bi] = min(
        [table[ai-1][bi-1]+int(a[ai]!=b[bi])*cost_mismatch,
        table[ai][bi-1]+cost_slice,
        table[ai-1][bi]+cost_slice]
        )




  # ちなみにそのものの関数がある
  # echo a.editDistance(b)

  table[len(table)-1][len(table[0])-1]<=1




import unittest

suite "description for this stuff":
  echo "suite setup: run once before the tests"

  setup:
    echo "run before each test"

  teardown:
    echo "run after each test"

  test "same string":
    check:
      Ch1_5("abcd","abcd") == true
      Ch1_5("abc","abc") == true

  test "insert a character":
    check:
      Ch1_5("abcd","abcde") == true
      Ch1_5("abcd","abc") == true
  test "remove a character":
    check:
      Ch1_5("abcd","abecd") == true
      Ch1_5("adbc","abc") == true
  test "replace a character":
    check:
      Ch1_5("abcd","abce") == true
  test "impossible":
    check:
      Ch1_5("abcd","abcdef") == false
      Ch1_5("abcd","bake") == false



  echo "suite teardown: run once after the tests"
