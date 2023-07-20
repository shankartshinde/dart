/*
Exercise 1
Create a program that asks the user to enter their name and their age.
Print out a message that tells how many years they have to be 100 years old.
*/

import 'dart:io';

void exercise1() {
  stdout.writeln("Please enter your name\r\n");
  String userName = stdin.readLineSync().toString();
  String inputMessage = "Could you let us know your age?";
  getAgeFromUser(userName, inputMessage);
}

void getAgeFromUser(String name, String inputMessage) {
  stdout.writeln(inputMessage);
  String? inputAge = stdin.readLineSync();
  // This is alernative to try catch
  //int? age = int.tryParse(inputAge.toString());

  try {
    int age = int.parse(inputAge.toString());
    validation(name, age);
  } catch (e, s) {
    print('Exception details:\n $e');
    //print('Stack trace:\n $s');
    validation(name, null);
  } finally {
    print("You are in finally block");
  }
}

void validation(String name, int? age) {
  if (age != null) {
    int diff = 100 - age;
    print("$name Surprise!!!, $diff years will require to pass on then  you  would be 100 years old.");
    // Use Enum or Switch case to specify age group (new born, toddalar, young, adult, senior citizen, god gift )
  } else {
    String inputMessage = "Sorry! Please enter integer number.";
    getAgeFromUser(name, inputMessage);
  }
}
