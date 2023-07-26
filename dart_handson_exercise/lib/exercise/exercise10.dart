/*
https://hackmd.io/@kuzmapetrovich/S1x90jWGP
Exercise 10
Ask the user for a number and determine whether the number is prime or not.

Do it using a function
*/

import 'dart:io';

bool isPrime(int number) {
  bool isPrimeNumber = true;
  if(number == 0 || number == 1 || number == 2 || number == 3) return isPrimeNumber;

  if(number%2 == 0) return false;

  for (var i = 2; i < number/2; i++) {
    if(number%i == 0) {
      isPrimeNumber = false;
      break;
    } 
  }
  return isPrimeNumber;
}

int? readUserChoiceOnCommand() {
  stdout.writeln("*********Determine is number prime*********");
  stdout.writeln("0. Continue");
  stdout.writeln("1. See the result");
  String? inputFromUser = stdin.readLineSync();
  int? convertStrToInt = int.tryParse(inputFromUser!);
  return convertStrToInt;
}

bool isUserWantToContinue(int choice) {
  if (choice == 0) {
    return true;
  } else {
    return false;
  }
}

void exercise10() {
  int? userChoice = readUserChoiceOnCommand();
  if (userChoice == null) {
    stdout.writeln("Enter valid choice between 0 and 1");
    userChoice = readUserChoiceOnCommand();
  }

  var result = <int, String>{};
  while (isUserWantToContinue(userChoice!)) {
    stdout.writeln("Enter number as per your choice");
    String? guessString = stdin.readLineSync();
    int? numberValue = int.tryParse(guessString!);
    print("guessNumber :: $numberValue");
    if (numberValue == null) {
      stdout.writeln("Sorry!, enter valid guess number");
      userChoice = readUserChoiceOnCommand();
      print("Third input $userChoice");
    } else {
      bool numberType = isPrime(numberValue);
      if (numberType) {
        result[numberValue] = "Prime number";
      } else {
        result[numberValue] = "Not a prime number";
      }
    }
    userChoice = readUserChoiceOnCommand();
  }
  stdout.writeln("**********Final result*******");
  stdout.writeln(result);
}
