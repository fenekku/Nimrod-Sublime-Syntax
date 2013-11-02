
# THIS CODE DOES NOT COMPILE. IT IS USED TO TEST SYNTAX HIGHLIGHTING

# This is a comment

import tables
from sets import TSet

proc toLower(c: char): char = # toLower for characters
  if c in {'A'..'Z'}:
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


var a : string = "Hello World!" & " I am here."
var aa : string = "Hello\n Wo\r\cld!\l\f" & "\t\v \\ \"I\'\4h \am\b h\ere\x FF."
var b : int = 10
var c : seq[int]
var d : tuple[hello : string, world : int]
var e : bool = true
var f : bool = false
var g : char = 'd'
var h : cint = 10
var i : cstring = 'Good riddance Mr. Charles \n' & 'Good day Mrs. Shultz'
var j : float = 54.34543

var
  k : int = 0o1'i8
  l : float = 3.0
  m :uint8 = 0x12'u8


const
  GLFW_VERSION_MAJOR* = 3'i8
  GLFW_VERSION_MINOR* = 0'i8
  GLFW_VERSION_REVISION* = 1'i8


type
  TTyoe = object
  PType = ref TType
  TBla = object

case k
of 1:
  echo("Hello")
  return "Camera .position=[$# $# $#]" % map(camera.position, floatToStr)
of 2:
  echo("Bla")
  return [0'u, 0'u32, 0x30'u8,0x00'u8,0x10'u8,0xFF'u8]

# type
#   TType = object
#   PType = ref TType

proc `$`(a : int): string =
  return $a

proc `+=`(a : int): string =
  return $a

if a >= b and b <= c and f:
  return repr(a)
else:
  return b

if window == nil:
  glfwTerminate()

h = 0.0


if 1 in 0..4:
  echo "here"

proc setLineLength*(layout: PLayout; len: cfloat) {.
  importc: "ftglSetLayoutLineLength", dynlib: LibName.}

let
  a = @[1, 2, 3, 4]
  b = map(a, proc(x: int): string = $x)
assert b == @["1", "2", "3", "4"]


method selectup*(screen : PScreen) =
  echo("Pressed Up Arrow")

method exit*(screen : PScreen) =
  quit "cyao!"

proc foo(a : string) =
  a.toUpperCase()

try:
  # Main keyboard loop.
  while not result.quitting:
    process_keystroke()
    result.win_main.refresh
except:
  var e = getCurrentException()
  var msg = getCurrentExceptionMsg()
  debug_log "Terminated by signal " & $msg
