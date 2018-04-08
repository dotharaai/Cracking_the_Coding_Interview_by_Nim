type
  MyArray* = ref ArrayObj
  ArrayObj* = object
    next*: MyArray
    data*: int



proc `[]`*(a:MyArray,index:int):MyArray=
  if index==0:
    a
  else:
    a.next[index-1]

proc `[]=`*(a:MyArray,index:int,value:int)=
  if index==0:
    a.data = value
  else:
    a.next[index-1].data=value

proc `[]=`*(a:var MyArray,index:int,Array:MyArray)=
  a = Array


proc append*(a:var MyArray, data:int)=
  if a.next==nil:
    a.next=MyArray(data:data)
  else:
    append(a.next, data)

proc len*(a:MyArray,l:int=1):int=
  if a.next == nil:
    return l
  else:
    return len(a.next,l+1)

proc `$`*(a:MyArray):string=
  result = $a[0].data
  for i in 1..<len(a):
    result.add(",")
    result.add(a[i].data)

proc find*(a:MyArray,value:int):int=
  result = -1
  for i in 0..<len(a):
    if a[i].data == value:
      result = i



import unittest
when isMainModule:
  suite "MyArray":
    test "append and $ work correctly":
      var a = MyArray(data:0)
      for i in 1..10:
        a.append(i)
      check:
        $a == "0,1,2,3,4,5,6,7,8,9,10"


    test "len() returns correct size of array":
      var a = MyArray(data:0)
      for i in 1..10:
        a.append(i)
      check:
        len(a) == 11

    test "a[index] returns correct value":
      var a = MyArray(data:0)
      for i in 1..10:
        a.append(i)
      check:
        a[1].data == 1

    test "find() returns correct index of value":
      var a = MyArray(data:0)
      for i in 1..10:
        a.append(i)
      check:
        a.find(1) == 1
        a.find(100) == -1
