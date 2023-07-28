/*
Write a program that asks the user how many Fibonnaci numbers to generate and then generates them.
 Take this opportunity to think about how you can use functions.

Make sure to ask the user to enter the number of numbers in the sequence to generate.
*/
// 1,1,2,3,5,8,13,21

import 'dart:io';

String readInputfromUser() {
  stdout.writeln("How many Fibonnaci numbers to generate?");
  String? valueInString = stdin.readLineSync();
  if (valueInString == null || valueInString.isEmpty) {
    print("Please enter decimal number");
    valueInString = stdin.readLineSync();
  }
  return valueInString!;
}

int? convertStringToNum(String input) {
  int? totalNum = int.tryParse(input);
  return totalNum;
}

List<int> fibonnaci(int totalCount) {
  List<int> resultList = <int>[];
  if(totalCount == 1) return [1];
  int firstValue = 1;
  int secondValue = 1;
  resultList.addAll([firstValue, secondValue]);
  for (var i = 2; i < totalCount; i++) {
    int sum = firstValue + secondValue;
    resultList.add(sum);
    firstValue = secondValue;
    secondValue = sum;
  }
  return resultList;
}

void exercise12() {
  String value = readInputfromUser();
  int? totalNum = convertStringToNum(value);
  if (totalNum == null) {
    print("Please enter decimal number");
  } else {
    print("Final result ${fibonnaci(totalNum)}");
  }
}
