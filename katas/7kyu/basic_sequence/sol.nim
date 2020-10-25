import math

proc sumOfN*(n: int): seq[int] =
  var sum = 0;
  for i in 0..<n.abs():
    sum += i
    result.add(sum * sgn(n))

echo(sumOfN(10))

# test "Basic tests":
# check:
#   sumOfN(3) == @[0, 1, 3, 6]
#   sumOfN(-4) == @[0, -1, -3, -6, -10]
#   sumOfN(1) == @[0, 1]
#   sumOfN(0) == @[0]
#   sumOfN(10) == @[0, 1, 3, 6, 10, 15, 21, 28, 36, 45, 55]


#[
# Another way of doing this:
import math
import sequtils

proc sumOfN*(n: int): seq[int] =
  (0 .. n.abs()).mapIt(n.sgn() * (it ^ 2 + it) div 2)
]#
