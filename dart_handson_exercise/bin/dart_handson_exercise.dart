/*
https://levelup.gitconnected.com/28-coding-exercises-for-dart-69eb104ae291
https://hackmd.io/@kuzmapetrovich/S1x90jWGP

*/
import 'dart:io';
import 'dart:convert';
import 'dart:async';

import 'package:dart_handson_exercise/dart_handson_exercise.dart'
    as dart_handson_exercise;
import 'package:dart_handson_exercise/exercise/exercise10.dart';
import 'package:dart_handson_exercise/exercise/exercise11.dart';
import 'package:dart_handson_exercise/exercise/exercise12.dart';
import 'package:dart_handson_exercise/exercise/exercise13.dart';
import 'package:dart_handson_exercise/exercise/exercise14.dart';
import 'package:dart_handson_exercise/exercise/exercise15.dart';
import 'package:dart_handson_exercise/exercise/exercise16.dart';
import 'package:dart_handson_exercise/exercise/exercise17.dart';
import 'package:dart_handson_exercise/exercise/exercise18.dart';
import 'package:dart_handson_exercise/exercise/exercise2.dart';
import 'package:dart_handson_exercise/exercise/exercise21.dart';
import 'package:dart_handson_exercise/exercise/exercise22.dart';
import 'package:dart_handson_exercise/exercise/exercise23.dart';
import 'package:dart_handson_exercise/exercise/exercise24.dart';
import 'package:dart_handson_exercise/exercise/exercise25.dart';
import 'package:dart_handson_exercise/exercise/exercise26.dart';
import 'package:dart_handson_exercise/exercise/exercise27.dart';
import 'package:dart_handson_exercise/exercise/exercise28.dart';
import 'package:dart_handson_exercise/exercise/exercise3.dart';
import 'package:dart_handson_exercise/exercise/exercise1.dart';
import 'package:dart_handson_exercise/exercise/exercise4.dart';
import 'package:dart_handson_exercise/exercise/exercise5.dart';
import 'package:dart_handson_exercise/exercise/exercise6.dart';
import 'package:dart_handson_exercise/exercise/exercise7.dart';
import 'package:dart_handson_exercise/exercise/exercise8.dart';
import 'package:dart_handson_exercise/exercise/exercise9.dart';

void executionOfExercises() async {
  while (true) {
    print("-----------New Start----------");
    print("Which exercise would you like to try?");
    print("Type exit for stop.");
    String userinput = stdin.readLineSync().toString().trim().toLowerCase();
    if(userinput == "exit") {
      exit(0);
    }

    int? userChoice = int.tryParse(userinput);
    if (userChoice == null) {
      print("Sorry! wrong input. Try entering number between 1 to 28");
    } else {
      switch (userChoice) {
        case 1:
          exercise1();
          break;
        case 2:
          exercise2();
          break;
        case 3:
          exercise3();
          break;
        case 4:
          exercise4();
          break;
        case 5:
          exercise5();
          break;
        case 6:
          exercise6();
          break;
        case 7:
          exercise7();
          break;
        case 8:
          exercise8();
          break;
        case 9:
          exercise9();
          break;
        case 10:
          exercise10();
          break;
        case 11:
          exercise11();
          break;
        case 12:
          exercise12();
          break;
        case 13:
          exercise13();
          break;
        case 14:
          exercise14();
          break;
        case 15:
          exercise15();
          break;
        case 16:
          exercise16();
          break;
        case 17:
          exercise17();
          break;
        case 18:
          exercise18();
          break;
        case 19:
          print("exercise 19 is pending...");
          break;
        case 20:
          print("exercise 20 is pending...");
          break;
        case 21:
          exercise21();
          break;
        case 22:
          exercise22();
          break;
        case 23:
          await exercise23();
          break;
        case 24:
          await exercise24();
          break;
        case 25:
          exercise25();
          break;
        case 26:
          exercise26();
          break;
        case 27:
          exercise27();
          break;
        case 28:
          exercise28();
          break;
        default:
        print("Enter your choice between 1 to 28");
      }
    }
  }
}

void askExerciseNumberToUser() {
  while (true) {
    stdout.writeln('''
Enter number between  1 to 28 to execute the respective exercise.
Would you like to continue, choose below options?
1. Yes
2. No
''');
    int? userChoice = int.tryParse(stdin.readLineSync().toString().trim());
    if (userChoice == null) {
      print("Sorry! enter value in number 1 or 2");
    } else {
      if (userChoice == 2) {
        break;
      }
      executionOfExercises();
    }
  }
}

void main(List<String> arguments) {
  stdout.writeln("""
It's good to have an understanding of Dart programming such as the syntax, data types, variables, control structures, functions, and object-oriented programming.
Thanks to @kuzmapetrovich, I came across exercise series. That help me to explore more topic along with above.
There are total 28 exercises.
 """);

  askExerciseNumberToUser();
}

void createMapExample() {
  var result = <int, String>{};
  result[1] = "value1";
  result[2] = "value2";
  result[3] = "value3";
  result[4] = "value4";
  print(result);
}
