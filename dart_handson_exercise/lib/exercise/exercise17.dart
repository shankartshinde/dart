/*
Exercise 17
Time for some fake graphics! Let’s say we want to draw game boards that look like this:

 --- --- --- 
|   |   |   | 
 --- --- ---  
|   |   |   | 
 --- --- ---  
|   |   |   | 
 --- --- --- 
This one is 3x3 (like in tic tac toe).

Ask the user what size game board they want to draw,
 and draw it for them to the screen using Dart’s print statement.
*/

import 'dart:io';

exercise17() {
  stdout.writeln("What size game board they want to draw? ie. 2,3,4,5");
  int? userValueOnCommandLine =  int.tryParse(stdin.readLineSync()!);
  if (userValueOnCommandLine == null) {
    print("Invalid input");
  } else {
  String sleepingLine = " ---";
  String standingLine = "|";
  int n = userValueOnCommandLine;
  int m = userValueOnCommandLine;
  for (var i = 0; i < n; i++) {
    for (var j = 0; j < m; j++) {
      stdout.write(sleepingLine);
    }
    stdout.writeln();
    for (var k = 0; k < m + 1; k++) {
      stdout.write(standingLine);
      stdout.write("   ");
    }
    stdout.writeln();
  }

  for (var j = 0; j < m; j++) {
    stdout.write(sleepingLine);
  }
  stdout.writeln();
  }
}
