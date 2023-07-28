/*
Write a program (using functions!) that asks the user for a long string containing multiple words. Print back to the user the same string, except with the words in backwards order.

For example, say I type the string:

  My name is Michele
Then I would see the string:

  Michele is name My
*/

import 'dart:io';

void exercise14() {
  String input = "My name is Michele";
  stdout.writeln("Input String :: $input");

  List<String> tokenized = input.split(" ");
  String output = tokenized.reversed.toList().join(" ");
  print(output);
}