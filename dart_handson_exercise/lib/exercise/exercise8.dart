/*
https://hackmd.io/@kuzmapetrovich/S1x90jWGP
Exercise 8
Make a two-player Rock-Paper-Scissors game against computer.

Ask for player’s input, compare them, print out a message to the winner.
*/
import 'dart:io';
import 'dart:math';

enum Choices {
  rock,
  paper,
  scissors;
}

enum Result { win, lose, tie }

String getNameOf(Choices value) {
  switch (value) {
    case Choices.paper:
      return "PAPER";
    case Choices.rock:
      return "ROCK";
    case Choices.scissors:
      return "SCISSORS";
    default:
      return "In valid";
  }
}

int getRandomChoice() {
  int randomIndex = Random().nextInt(Choices.values.length);
  return randomIndex;
}

Choices getChoice(int index) {
  var choice = Choices.values[index];
  return choice;
}

String getComputerChoice(int index) {
  var choice = Choices.values[index];
  return getNameOf(choice);
}

String getUserChoice(int index) {
  var choice = Choices.values[index];
  return getNameOf(choice);
}

String getResult(Choices computer, Choices user) {
  if (computer == Choices.rock) {
    return "Computer ${Result.win.name} and you ${Result.lose.name}";
  } else if (user == Choices.rock) {
    return "Computer ${Result.lose.name} and you ${Result.win.name}";
  }

  if (computer == Choices.scissors && user == Choices.paper) {
    return "Computer ${Result.win.name} and you ${Result.lose.name}";
  } else if (computer == Choices.paper && user == Choices.scissors) {
    return "Computer ${Result.lose.name} and you ${Result.win.name}";
  }

  if (computer == Choices.scissors && user == Choices.scissors) {
    return "Attempt is  ${Result.tie.name}";
  }

  if (computer == Choices.rock && user == Choices.rock) {
    return "Attempt is  ${Result.tie.name}";
  }

  if (computer == Choices.paper && user == Choices.paper) {
    return "Attempt is  ${Result.tie.name}";
  }

  return "tie";
}

int? readUserChoiceOnCommand() {
  stdout.writeln("Enter your choices as below");
  stdout.writeln("0. ${getNameOf(Choices.rock)}");
  stdout.writeln("1. ${getNameOf(Choices.paper)}");
  stdout.writeln("2. ${getNameOf(Choices.scissors)}");
  stdout.writeln("3. Exit");
  String? inputFromUser = stdin.readLineSync();
  int? convertStrToInt = int.tryParse(inputFromUser!);
  return convertStrToInt;
}

void decideGameResult(int userInputChoice) {
  Choices userChoice = getChoice(userInputChoice);
  Choices computerChoice = getChoice(getRandomChoice());
  stdout.writeln("Your choice is :: $userChoice");
  stdout.writeln("Computer choice is :: $computerChoice");
  var result = getResult(computerChoice, userChoice);
  stdout.writeln("*******Attempt result :: $result *******");
}

void exercise8() {
  var userInputChoice = readUserChoiceOnCommand();
  while (userInputChoice != 3) {
    if (userInputChoice == null) {
      stdout.writeln("Sorry, your choice need to be from 0 to 3}");
      readUserChoiceOnCommand();
    } else {
      decideGameResult(userInputChoice);
      stdout.writeln("Try next round");
      userInputChoice = readUserChoiceOnCommand();
    }
  }
}

void homework() {
  const choices = Choices.values;
  print(choices);

  for (int element in List.generate(5, (index) => index)) {
    //print(element);
    int randomIndx = Random.secure().nextInt(Choices.values.length);
    var choiceName = Choices.values[randomIndx];
    print(
        "Random index $element and value ${randomIndx} and their name ${choiceName.name}");
  }

  // choices.forEach((element) {
  //   print(element);
  //   print(element.index);
  //   print(element.name);
  // });
}
