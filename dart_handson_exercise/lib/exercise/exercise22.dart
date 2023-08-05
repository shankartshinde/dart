/*
Exercise 22
Implement a function that takes as input three variables, and returns the largest of the three. Do this without using the Dart max() function!

The goal of this exercise is to think about some internals that Dart normally takes care of for us. All you need is some variables and if statements!
*/
import 'dart:io';

void exercise22() {
  stdout.writeln(
      "Hello friend, Please enter any three number as per your choice.");
  stdout.writeln("I am computer, will help you to find max and min");

  String? userInput = stdin.readLineSync();
  if (userInput == null) {
    print("Sorry! please enter input again");
  } else {
    List<String> list = userInput.split(' ');
    List<int> numbers = list.map((e) => int.parse(e.trim())).toList();
    numbers.sort();
    print("Max number :: ${numbers.last}");
    print("Min number :: ${numbers.first}");
  }
}
