/*
Exercise 16
Create a program that will play the “cows and bulls” game with the user.
The game works like this:

Randomly generate a 4-digit number. 
Ask the user to guess a 4-digit number. 
For every digit the user guessed correctly in the correct place, they have a “cow”.
For every digit the user guessed correctly in the wrong place is a “bull.”

Every time the user makes a guess, tell them how many “cows” and “bulls” they have.
Once the user guesses the correct number, the game is over.
Keep track of the number of guesses the user makes throughout the game and tell the user at the end.
*/

import 'dart:io';
import 'dart:math';

final randomizer = Random();
//Randomly generate a 4-digit number.
int getFourDigitNumber() {
  int firstDigit = randomizer.nextInt(9) + 1;
  int secondDigit = randomizer.nextInt(9) + 1;
  int thirdDigit = randomizer.nextInt(9) + 1;
  int fourthDigit = randomizer.nextInt(9) + 1;
  List<int> numbers = [firstDigit, secondDigit, thirdDigit, fourthDigit];
  numbers.shuffle();
  String combinedNumber = numbers.join();
  if(combinedNumber.length != 4) {
    getFourDigitNumber();
  }
  return int.parse(combinedNumber);
}

// if number matches at place then add to 'cow' else 'bull'
//
Map<String, int> checkUserGuess(int userNumber, int computerNumber) {
  print("User guess :: $userNumber \n Computer guess :: $computerNumber");
  Map<String, int> result = <String, int>{};
  result["cow"] = 0;
  result["bull"] = 0;
  while (0 < userNumber) {
    int userNumberDigit = userNumber % 10;
    int computerNumberDigit = computerNumber % 10;
    if (userNumberDigit == computerNumberDigit) {
      result["cow"] = result["cow"]! + 1;
    } else {
      result["bull"] = result["bull"]! + 1;
    }

    userNumber = userNumber ~/ 10;
    computerNumber = (computerNumber / 10).toInt();
  }
  return result;
}

void readUserInputExercise16() {
  stdout.writeln("Play the game");
  stdout.writeln("Enter any four digit number from 1000 to 9999");
  stdout.writeln(
      "For every digit the user guessed correctly in the correct place, they have a 'cow' else 'bull'");
}

int askUserToContinue() {
  stdout.writeln("Press 1 to 9 for continue");
  stdout.writeln("Press 0 for exit");
  String? choice = stdin.readLineSync();
  if (choice == null) {
    stdout.writeln("Please enter correct choice below");
  }

  int? convertChoice;
  convertChoice = int.tryParse(choice!);
  if(convertChoice == null) {
    stdout.writeln("Please enter digit choice below");
  }
  
  return convertChoice!;
}

String? getUserGuess() {
  stdout.writeln("Enter any number from 1000 to 9999 as per your guess!");
  String? choice = stdin.readLineSync();
  if (choice == null) {
    stdout.writeln("Invalid input. Please enter correct value as per above instruction");
    choice = stdin.readLineSync();
  }
  
  return choice;
}

int validateUserGuess() {
  //convert String to int number
  int? userGuessChoice = int.tryParse(getUserGuess()!);
  // keep continue till get correct number 
  if(userGuessChoice == null) {
    stdout.writeln("Invalid number. Please enter correct value as per below instruction");
    userGuessChoice = int.tryParse(getUserGuess()!);
  }

  // check number length
  int numberLength =  userGuessChoice.toString().length;
  if(numberLength != 4) {
    stdout.writeln("Your input is $numberLength digit. Better guess follow below instruction");
  }

  return userGuessChoice!;
}

void exercise16() {
  readUserInputExercise16();
  Map<String, int> finalResult = {"cow": 0, "bull": 0};
  int round = 0;
  while (askUserToContinue() != 0) {
    round++;
    int userGuess = validateUserGuess();
    Map<String, int> gameRound = checkUserGuess(userGuess, getFourDigitNumber());
    finalResult["cow"] = finalResult["cow"]! + gameRound["cow"]!;
    finalResult["bull"] = finalResult["bull"]! + gameRound["bull"]!;
  }
  print("Thanks for playing");
  print("You have played rounds $round");
  print("your matched guess means 'cow' :: ${finalResult["cow"]}");
  print("your unmatched guess means 'bull' :: ${finalResult["bull"]}");
}
