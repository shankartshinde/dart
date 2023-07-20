/*
https://hackmd.io/@kuzmapetrovich/S1x90jWGP

Exercise 2
Ask the user for a number.
Depending on whether the number is even or odd, print out an appropriate message to the user.
*/

import 'dart:io';

void exercise2() {
  stdout.writeln("Enter number you want to check");
  num userInputValue = int.parse(stdin.readLineSync().toString());
  if(userInputValue%2 == 0) {
    print("You enterred value $userInputValue is of type even number");
  } else {
    print("You enterred value $userInputValue is of type Odd number");
  }

  String result = userInputValue % 2 == 0 ? 'EVEN VALUE' :  'ODD VALUE';
  print("Number type: $result");
}