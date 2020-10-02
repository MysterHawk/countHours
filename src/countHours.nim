# Dependencies of the program
import strutils # to read the line in the terminal
import math # to round up the division
import os # To sleep :Q________


# Here the application begin
when isMainModule:
  echo "Hello!"
  echo "This is a program that basically counts the total hours given from a sum of minutes"
  echo "CountHours App Version 0.2.0 1/10/2020"
  echo "BSD 3-Clause License Copyright (c) 2020, Antonio Gagliarducci All rights reserved.\n"
  echo "INSTRUCTIONS:"
  echo "The step are the following:"
  echo "1) Insert a number of minutes"
  echo "2) Press enter"
  echo "3) Read the result :^"
  echo "4) Repeat ♾️"
  echo "To exit the program write '-1' and press enter, the program will know \n\n"

  echo "Let's begin, have fun :)"

  # the variables are created and their base value is setted
  var 
    minutes:int = 0 
    hours:int = 0
    inputUser:int = 0

  while true:
    # I ask for INPUT
    echo "\n\n---"
    echo "insert the minutes:"
    
    # I catch the exception if the user insert a string instead of a number
    try:
      inputUser = stdin.readline.parseInt

      # if the input is 0 than you dont need to print/calculate the hours
      if inputUser > 0:
        
        # if the minutes are more than 60 then I add them directly to the hours count
        if inputUser >= 60:
          hours = hours + floorDiv(inputUser, 60)
          minutes = minutes + floorMod(inputUser, 60)
        else: # else they are simple minutes
          minutes = minutes + inputUser


        # if the minutes are more than 60 then I add them to the hours count
        # And subtract the difference (minutes - numberInHours*60)
        if minutes >= 60:
          hours = hours + floorDiv(minutes, 60)
          minutes = minutes - floorDiv(minutes, 60)*60
        
        # if there is some value in the variable print the result tab
        if (hours > 0 or minutes > 0) and inputUser != -1:
          echo "===+++++=== TAB TOTAL HOURS ===+++++==="
          echo "\n", hours, " hours ", minutes, " minutes"
          echo "\n===+++++=== TAB TOTAL HOURS ===+++++==="
          # if the number is greater than 60 it is atleast an hour

      else:
        echo "\n-------------"
        echo "\nAttention the minutes should be greater than 0 !!!!"
        echo "\n-------------"

      # condition to check if the user want to exit from the program
      if inputUser == -1:
        echo "\n\n---------"
        echo "Thank you for using this program"
        echo "Have a wonderful day :)"
        echo "-The author"
        # condition added for letting the user read the final message
        sleep(3000)
        # exit from the while true and the program
        break

    except ValueError:
      echo "\n----------------"
      echo "\nAttention please enter a valid number !!!!!"
      echo "\n----------------"

    

    

    

      


