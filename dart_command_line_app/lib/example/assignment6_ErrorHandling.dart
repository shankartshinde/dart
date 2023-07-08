/*
Ask the user for an age,
 if the age is less than 18, throw an Exception of "too young".
If the age is over 99 throw an Exception of "too old".
 Catch the Exception and use a catch all. Also split these tasks up into different functions.
*/

import 'dart:io';

void handleExceptionExample({int userAge=0}) {
  //var yourchoiceAge = acceptAgeFromUser();
  var yourchoiceAge = userAge;
  try {
      var finalMessage = checkAgeCondition(yourchoiceAge);
      print(finalMessage);
  } catch (e) {
    print("Error :: ${e.toString()}");
  } finally {
    print("completed");
  }
}

int acceptAgeFromUser() {
  stdout.writeln("Please enter your age:: ");
  int age = int.parse(stdin.readLineSync().toString());
  return age;
}

checkAgeCondition(int age) {
  if(age < 17) {
    throw Exception("Too young");
  } else if (99 <= age) {
    throw Exception("Too old");
  } else {
    return "${age} is in the range";
  }
}