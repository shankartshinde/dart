/*
https://levelup.gitconnected.com/28-coding-exercises-for-dart-69eb104ae291
https://hackmd.io/@kuzmapetrovich/S1x90jWGP

*/
import 'package:dart_handson_exercise/dart_handson_exercise.dart'
    as dart_handson_exercise;
import 'package:dart_handson_exercise/exercise/exercise10.dart';
import 'package:dart_handson_exercise/exercise/exercise2.dart';
import 'package:dart_handson_exercise/exercise/exercise3.dart';
import 'package:dart_handson_exercise/exercise/exercise1.dart';
import 'package:dart_handson_exercise/exercise/exercise4.dart';
import 'package:dart_handson_exercise/exercise/exercise5.dart';
import 'package:dart_handson_exercise/exercise/exercise6.dart';
import 'package:dart_handson_exercise/exercise/exercise7.dart';
import 'package:dart_handson_exercise/exercise/exercise8.dart';
import 'package:dart_handson_exercise/exercise/exercise9.dart';

void main(List<String> arguments) {
  //print('Hello world: ${dart_handson_exercise.calculate()}!');
  // exercise1();
  // exercise2();
  // exercise3();
  // exercise4();
  // exercise5();
  // exercise6();
  // exercise7();

  //exercise8();
  //exercise9();
  exercise10();
}

void createMapExample() {
  var result = <int, String>{};
  result[1] = "value1";
  result[2] = "value2";
  result[3] = "value3";
  result[4] = "value4";
  print(result);
}
