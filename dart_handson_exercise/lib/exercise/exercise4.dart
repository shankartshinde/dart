/*
Create a program that asks the user for a number and then prints out a list of all the divisors of that number.

If you don’t know what a divisor is,
 it is a number that divides evenly into another number.
  For example, 13 is a divisor of 26 because 26 / 13 has no remainder.
*/
import 'dart:io';

void exercise4() {
  stdout.writeln("Enter number which you want find list of divisors");
  String? input = stdin.readLineSync().toString();
  int number = int.parse(input);
  print(getDivisor(number));

  if(input != null) {

  }
}

List<int> getDivisor(int number) {
  List<int> result = <int>[];
  result.add(1);
  result.add(2);
  result.add(3);
  result.add(4);
  return result;
}