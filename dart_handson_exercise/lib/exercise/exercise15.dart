/*
Exercise 15
Write a password generator in Dart.
 Be creative with how you generate passwords -
  strong passwords have a mix of lowercase letters, uppercase letters, numbers, and symbols.
  The passwords should be random, generating a new password every time the user asks for a new password.
   Include your run-time code in a main method.

Ask the user how strong they want their password to be. For weak passwords, pick a word or two from a list.

:exclamation: Do not use the generated password in your real accounts. Use 1password.
*/

import 'dart:convert';
import 'dart:math';

List<String> getNumbers() {
  return "0123456789".split('');
}

List<String> getSpecialChar() {
  return "#@!*\$".split('');
}

List<String> getUpperChar() {
  // Generate upper case alphabet sequence
  List<String> allUpperCaseLetters =
      List.generate(26, (index) => String.fromCharCode(index + 65));
  return allUpperCaseLetters;
}

List<String> getLowerChar() {
  // Generate upper case alphabet sequence
  List<String> allUpperCaseLetters =
      List.generate(26, (index) => String.fromCharCode(index + 97));
  return allUpperCaseLetters;
}

String randomNumberGenerator(int count) {
  var numbers = getNumbers();
  int index = Random().nextInt(numbers.length);
  return numbers[index];
}

String randomSpecialCharGenerator(int count) {
  var chars = getSpecialChar();
  int index = Random().nextInt(chars.length);
  return chars[index];
}

String randomLowerCaseCharGenerator(int count) {
  var lowerCaseAlphabets = getLowerChar();
  int index = Random().nextInt(lowerCaseAlphabets.length);
  return lowerCaseAlphabets[index];
}

String randomUpperCaseCharGenerator(int count) {
  var upperCaseAlphabets = getUpperChar();
  int index = Random().nextInt(upperCaseAlphabets.length);
  return upperCaseAlphabets[index];
}

String generatePassword() {
  //numbers.
  List<String> anyTwoNumber = List.generate(2, randomNumberGenerator);
  List<String> anySingleSpecialChar =
      List.generate(1, randomSpecialCharGenerator);
  List<String> any4LowerCaseChar =
      List.generate(4, randomLowerCaseCharGenerator);
  List<String> any3UpperCaseCaseChar =
      List.generate(4, randomUpperCaseCharGenerator);

  anyTwoNumber.shuffle();
  any4LowerCaseChar.shuffle();
  any3UpperCaseCaseChar.shuffle();
  List<String> newPassword = [];
  newPassword.addAll(anyTwoNumber);
  newPassword.addAll(anySingleSpecialChar);
  newPassword.addAll(any4LowerCaseChar);
  newPassword.addAll(any3UpperCaseCaseChar);
  newPassword.shuffle();
  return newPassword.join();
}

void exercise15() {
  print("New first attempt password :: ${generatePassword()}");
  print("New second attempt password :: ${generatePassword()}");
}

void homeWorkAsciiToValue() {
  // Generate upper case alphabet sequence
  // convert ASCII to String
  List<String> allLowerCaseLetters =
      List.generate(26, (index) => String.fromCharCode(index + 97));
  print(allLowerCaseLetters);

  // Convert each char to ascii value
  String alphabet = 'abcde';
  var asciiValues = alphabet.codeUnits;
  print(asciiValues);
}
