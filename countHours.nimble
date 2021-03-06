# Package

version       = "0.2.0"
author        = "Antonio Gagliarducci"
description   = "A program that count the total hours given by the sum of the minutes inserted in every cycle"
license       = "BSD-3-Clause"
srcDir        = "src"
bin           = @["countHours"]



# Dependencies

requires "nim >= 1.2.6"
requires "os"
requires "strutils"
requires "math"
