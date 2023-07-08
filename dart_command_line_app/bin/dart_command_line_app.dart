import 'dart:io';

import 'package:dart_command_line_app/dart_command_line_app.dart' as dart_command_line_app;
import 'package:dart_command_line_app/example/listExample.dart';
import 'package:dart_command_line_app/example/assignment1_user_input.dart';
import 'package:dart_command_line_app/example/assignment3_ListPeople.dart';
import 'package:dart_command_line_app/example/section3_flowControls.dart';
import 'package:dart_command_line_app/example/assignment4_loop.dart';
import 'package:dart_command_line_app/example/assignment5_UseFunction.dart';
import 'package:dart_command_line_app/example/assignment6_ErrorHandling.dart';

/*
Ask the user for their first name, and store their input in a variable.
Then ask the user for their last name and store that in a variable.
Finally display the full name to the user.
*/
void main(List<String> arguments) {
  //Assignment 1
  print("------Section2: User input and variables------------");
  //assignmentPersonalUserDetails()
  //assignmentUserInput();

  // Section2: List
  print("------Section3: List------------");
  doMyListOperation();
  // Section2: Set
  print("------Section3: Set------------");
  setOperation();

  print("------Section3: Queue------------");
  queueOperation();

  print("------Section3: Assignement------------");
  assignment2ListPeople();

  print("------Section4: Control Flows------------");
  doPracticeWithControlFlows();

  print("------Section4: Assignment------------");
  printNumbersTill10();

  print("------Section5: Assignment------------");
  assignementUseFunction();

  print("------Section6: Error handling------------");
  handleExceptionExample(userAge: 16);
  handleExceptionExample(userAge: 39);
  handleExceptionExample(userAge: 101);
}
