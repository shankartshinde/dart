/*
For this exercise, we will keep track of when our friend’s birthdays are,
 and be able to find that information based on their name.

Create a dictionary (in your file) of names and birthdays.
 When you run your program it should ask the user to enter a name,
  and return the birthday of that person back to them. 
  The interaction should look something like this:

>>> Welcome to the birthday dictionary. We know the birthdays of:
Albert Einstein
Benjamin Franklin
Ada Lovelace
>>> Who's birthday do you want to look up?
Benjamin Franklin
>>> Benjamin Franklin's birthday is 01/17/1706.
*/

import 'dart:io';
import 'package:intl/intl.dart';

final Map<String, String> birthDays = <String, String>{
  "isaac newton": "25/12/1642",
  "galileo galilei": "15/02/1564",
  "marie curie": "7/11/1867",
  "stephen hawking": "8/01/1942",
  "grace hopper": "9/12/1906",
};

String? readUserChoiceOnCommand() {
  stdout
      .writeln("Welcome to the birthday dictionary. We know the birthdays of:");

  birthDays.keys.forEach((element) {
    stdout.writeln(element.toTitleCase());
  });

  stdout
      .writeln("Who's birthday do you want to look up?");
  return stdin.readLineSync();
}

String? getValidInputAgain() {
      print("Sorry, try again enter correct name");
    return readUserChoiceOnCommand();
}

void exercise26() {
  homeWorkExercise26();
  String? scientistName = readUserChoiceOnCommand()?.trim();
  String? birthday = birthDays[scientistName?.toLowerCase()];
  
  if (scientistName == null || birthday == null) {
    print("Sorry, try again enter correct name");
    exercise26();
  } else {
    String result = "$scientistName's birthday was $birthday.";
    print(result);
  }
}

void homeWorkExercise26() {
  // Capitalise the first letter from word in the sentence.
  // use model 'intl'
  String sourceString = "my name is bhola.";
  String output = toBeginningOfSentenceCase(sourceString)!;
  print("Solution using intl package :: $output");
  output = "";
  //alternative 
  //You can create extension on String as like below
  output = sourceString.toCapitalized();
  print("Solution using String extension :: ${sourceString.toCapitalized()}");
  print("Solution using String extension :: ${sourceString.toTitleCase()}");
}

extension StringCasingExtension on String {
  String toCapitalized() => length > 0 ?'${this[0].toUpperCase()}${substring(1).toLowerCase()}':'';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ').split(' ').map((str) => str.toCapitalized()).join(' ');
}