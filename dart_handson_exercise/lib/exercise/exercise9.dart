/*
https://hackmd.io/@kuzmapetrovich/S1x90jWGP
Exercise 9
Generate a random number between 1 and 100. Ask the user to guess the number,
 then tell them whether they guessed too low, too high, or exactly right.

Keep track of how many guesses the user has taken, and when the game ends, print this out.
/*
diff == 0 => exactly
diff < 10 => toohigh  8 < 10 / 15 < 10
diff < 20 => high
diff < 30 => low
diff < 40 => toolow
*/
*/

import 'dart:math';
import 'dart:io';

enum GuesseResult { toolow, low, high, toohigh, exactly }

int getRandomNumber() {
  return Random().nextInt(99) + 1; // Value is >= 1 and < 100.
}

int? readUserChoiceOnCommand() {
  stdout.writeln("*********Guess meter*********");
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

void exercise9() {
  int? userChoice = readUserChoiceOnCommand();
  print("First input $userChoice");
  if (userChoice == null) {
    stdout.writeln("Enter valid choice between 0 and 1");
    userChoice = readUserChoiceOnCommand();
    print("Second input $userChoice");
  }

  int attemptNum = 0;
  var result = <int, String>{};
  while (isUserWantToContinue(userChoice!)) {
    stdout.writeln("Guess the number between 1 to 100");
    String? guessString = stdin.readLineSync();
    int? guessNumber = int.tryParse(guessString!);
    print("guessNumber :: $guessNumber");
    if (guessNumber == null) {
      stdout.writeln("Sorry!, enter valid guess number");
      userChoice = readUserChoiceOnCommand();
      print("Third input $userChoice");
    } else {
      int computerRandomValue = getRandomNumber();
      int actualDiff = guessNumber.abs() - computerRandomValue.abs();
      if (actualDiff == 0) {
        result[attemptNum] = GuesseResult.exactly.name;
      } else if (actualDiff < 10) {
        result[attemptNum] = GuesseResult.toohigh.name;
      } else if (actualDiff < 20) {
        result[attemptNum] = GuesseResult.high.name;
      } else if (actualDiff < 30) {
        result[attemptNum] = GuesseResult.low.name;
      } else {
        result[attemptNum] = GuesseResult.toolow.name;
      }
      attemptNum++;
    }
    userChoice = readUserChoiceOnCommand();
    print("Fourth input $userChoice");
  }
  stdout.writeln("**********Final result*******");
  stdout.writeln(result);
}

