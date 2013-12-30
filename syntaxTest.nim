
# THIS CODE DOES NOT COMPILE. IT IS USED TO TEST SYNTAX HIGHLIGHTING

# This is a comment

import tables
from sets import TSet

var a : string = "Hello\n Wo\r\cld!\l\f" & "\t\v \\ \"I\'\4h \am\b h\ere\x FF."
var aa : cstring = r"Hello\n Wo\r\cld!\l\f" #raw string
var b : int = 10
var bb : cint = 10
var c : seq[int]
var d : tuple[hello : string, world : int]
var e : bool = true or false
var g : char = 'd'
# Invalid characters are highlighted in pink!
var i : char = 'Good riddance Mr. Charles \n' & 'Good day Mrs. Shultz'
var ii = '\n'
var iii = '\t'
var iiii = '\xAA'
var j : float = 54.34543

var
  k : int = 0o1'i8
  l : float = 3.0
  m : uint8 = 0x12'u8

const
  global_constant* = 3'i8

type
  TType = object
  PType = ref TType

proc toLower(c: char): char = # toLower for characters
  if c in {'a'..'Z'}:
    result = chr(ord(c) + (ord('a') - ord('A')))
  else:
    result = c

iterator loop*[T](node : PCycleNode[T], times : int = 1): T {.inline.} =
  var tmpPtr : PCycleNode[T] = node
  var loops: int = 0

  while loops < times:
    yield tmpPtr.data
    tmpPtr = next(tmpPtr)
    if tmpPtr == node:
      inc(loops)

converter toBool*(a: Bool32): bool = bool(a)

macro parseOptions*(body: stmt): stmt {.immediate.}=
  body.expectKind nnkStmtList

case k
of 1:
  return "Camera .position=[$# $# $#]" % map(camera.position, floatToStr)
of 2:
  return [0'u, 0'u32, 0x30'u8, 0x00'u8, 0x10'u8,0xFF'u8]

proc `$`(a : int): string =
  return $a

proc `+=`(a : int): string =
  return $a

if a >= b and b <= c and f:
  return repr(a)
else:
  return b

if 1 in 0..4:
  echo "here"

let
  a = @[1, 2, 3, 4]
  b = map(a, proc(x: int): string = $x)
assert b == @["1", "2", "3", "4"]

method selectup*(screen : PScreen) =
  echo("Pressed Up Arrow")

try:
  # Main keyboard loop.
  while not result.quitting:
    process_keystroke()
    result.win_main.refresh
except:
  var e = getCurrentException()
  var msg = getCurrentExceptionMsg()
  debug_log "Terminated by signal " & $msg

template b(a : expr): stmt =
  bind inTemplateModule

block:
  echo "I am in a block\n"

echo """I am a long piece of text
        That takes multiple lines.\n
     """

echo r"""I am a raw long piece of text but that doesn't matter\n"""

