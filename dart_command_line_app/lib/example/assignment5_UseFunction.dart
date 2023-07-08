/*
Ask the user for a maximum number,
 use a loop to print each number on the screen from 1 to the number they provided.
 At the half way point, print out "half way there". Spit these tasks into functions.
*/

import 'dart:io';

void assignementUseFunction() {
  stdout.writeln("Enter maximum number of your choice");
  String? userInputNumAsStr = stdin.readLineSync();
  // int validValue = int.parse(stdin.readLineSync(), onError: (String err) {
  //   print("Error on entered number ${err}");
  //   return 0;
  // });
  int inputNum = int.parse(userInputNumAsStr.toString());
  printNumberUsingLoop(inputNum);
}

void printNumberUsingLoop(int number) {
  for(int i=0; i <= number; i++) {
    print(i);
    if (isLoopReachedHalfWay(currentIndex: i, totalItem: number)) {
      print("You reached half way");
    }
  }
}

bool isLoopReachedHalfWay({int? currentIndex, int? totalItem}) {
  return totalItem!/2 == currentIndex;
}