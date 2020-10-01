# This is just an example to get you started. A typical binary package
# uses this file as the main entry point of the application.
import strutils
import math
import os


when isMainModule:
  echo "Hello!"
  echo "This is a program that basically counts the total hours given from a sum of minutes"
  echo "CountHours App Version 0.0.1 1/10/2020 \n"
  echo "INSTRUCTIONS:"
  echo "The step are the following:"
  echo "1) Insert a number of minutes"
  echo "2) Press enter"
  echo "3) Read the result :^"
  echo "4) Repeat ♾️"
  echo "To exit the program write '-1' and press enter, the program will know \n\n"

  echo "Let's begin, have fun :)"

  var 
    minutes:int = 0 
    hours:int = 0
    inputUser:int = 0

  while true:
    echo "\n\n---"
    echo "insert the minutes:"
    try:
      inputUser = stdin.readline.parseInt
    except ValueError:
      echo "\n----------------"
      echo "\nAttention please enter a valid number !!!!!"
      echo "\n----------------"


    if inputUser > 60:
      hours = hours + floorDiv(inputUser, 60)
      minutes = minutes + floorMod(inputUser, 60)
    else:
      minutes = minutes + inputUser

    
    if minutes >= 60:
      hours = hours + floorDiv(minutes, 60)
      minutes = minutes - floorDiv(minutes, 60)*60
    
    if hours > 0 or minutes > 0:
      echo "===+++++=== TAB TOTAL HOURS ===+++++==="
      echo "\n", hours, " hours ", minutes, " minutes"
      echo "\n===+++++=== TAB TOTAL HOURS ===+++++==="

    if inputUser == -1:
      echo "\n\n---------"
      echo "Thank you for using this program"
      echo "Have a wonderful day :)"
      echo "-The author"
      sleep(3000)
      break


    

      


