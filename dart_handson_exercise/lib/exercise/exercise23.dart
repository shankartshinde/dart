/*
Exercise 23
In this exercise, the task is to write a function that picks a random word from a list of words from the SOWPODS dictionary.

Download this file and save it in the same directory as your Dart code. Each line in the file contains a single word.

Use the Dart random library for picking a random word.
*/
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';

String getFilePath() {
  return "${Directory.current.path}\\lib\\exercise\\sowpods.txt";
}

Future<List<String>> readAllWords() async {
  File fileObject = File(getFilePath());
  Stream<String> lines =
      fileObject.openRead().transform(utf8.decoder).transform(LineSplitter());
  List<String> words = await lines.toList();
  // try {
  //   await for (var line in lines) {
  //     print('$line: ${line.length} characters');
  //   }
  //   print('File is now closed.');
  // } catch (e) {
  //   print('Error: $e');
  // }
  return words;
}

Future<void> exercise23() async {
  final words = await readAllWords();
  while (true) {
    stdout.writeln("Would you like to continue 1. yes 2. exit");
    int userChoice = int.parse(stdin.readLineSync().toString().trim());
    if(userChoice == 2) {
      exit(0);
    } else {
      int randomIndex = Random().nextInt(words.length);
      print("Your next word :: ${words[randomIndex]}");
    }
  }
}
