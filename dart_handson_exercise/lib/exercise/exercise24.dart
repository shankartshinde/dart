/*
Exercise 24
In the game of Hangman, 
a clue word is given by the program that the player has to guess,
letter by letter. The player guesses one letter at a time until the entire word has been guessed. (In the actual game, the player can only guess 6 letters incorrectly before losing).

Let’s say the word the player has to guess is EVAPORATE.
For this exercise:

Write the logic that asks a player to guess a letter and displays letters in the clue word that were guessed correctly. For now, let the player guess an infinite number of times until they get the entire word.

As a bonus, keep track of the letters the player guessed and display a different message if the player tries to guess that letter again.

Remember to stop the game when all the letters have been guessed correctly! Don’t worry about choosing a word randomly or keeping track of the number of guesses the player has remaining - we will deal with those in a future exercise.
*/


import 'dart:io';
import 'dart:math';

import 'package:dart_handson_exercise/exercise/exercise23.dart';

exercise24() async {
  final words = await readAllWords();
  String computerPickString = words[Random().nextInt(words.length)];
  //String computerPickString =  "EVAPORATE";
  List<String> computerCharList =  computerPickString.split('');
  int wordLength = computerPickString.length;
  List<String> lettersMatched = List.filled(wordLength, "*", growable: false);
  Map<String, bool> guessCharacterHistory = <String, bool>{};
  String wordContainStar= "";

  while (true) {
    print("Character you guessed :: $guessCharacterHistory");
    print("Your used word looks like :: $wordContainStar");
    stdout.writeln("Guess the letter. Clue for you :: In the word number of characters are $wordLength");
    String userGuessLetter = stdin.readLineSync().toString().trim().toUpperCase();

    if(userGuessLetter.length != 1) {
      print("Sorry input not match, guess single character only");
    } else {
      if(computerPickString.contains(userGuessLetter)) {
        guessCharacterHistory[userGuessLetter] = true;
        for (int i = 0; i < wordLength; i++) {
          if(computerCharList[i] == userGuessLetter) {
            lettersMatched[i] = userGuessLetter;
          }
        }
      } else {
        guessCharacterHistory[userGuessLetter] = false;
        print("'$userGuessLetter' not in the word, try again");
      }
      wordContainStar = lettersMatched.join("");
      if(computerPickString == wordContainStar.trim()) {
        print("You have guessed word :: $computerPickString");
        break;
      }
    }
  }
}