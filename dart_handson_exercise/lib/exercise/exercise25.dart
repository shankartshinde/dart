/*
Exercise 25
In this exercise, we will finish building Hangman. In the game of Hangman, the player only has 6 incorrect guesses (head, body, 2 legs, and 2 arms) before they lose the game.

In Part 1, we loaded a random word list and picked a word from it.
In Part 2, we wrote a logic for guessing the letter and displaying that information to user.
In this exercise, we have to put it all together and add logic for handling guesses.

Copy your code from Parts 1 and 2 into a new file as a starting point. Now add the following features:

Only let the user guess 6 times, and tell the user how many guesses they have left.
Keep track of the letters user guessed. If the user guesses a letter they had already guessed, don’t penalize them - let them guess again.
Optional additions:

When the player wins or loses, let them start a new game.
Rather than telling the user “You have 4 incorrect guesses left”, display some picture art for the Hangman. This is challenging - do the other parts of the exercise first!
Your solution will be a lot cleaner if you make use of functions to help you!
*/

import 'dart:io';
import 'dart:math';

List<String> words = [
  "abruptly",
  "absurd",
  "abyss",
  "affix",
  "askew",
  "avenue",
  "awkward",
  "axiom",
  "azure",
  "bagpipes",
  "bandwagon",
  "banjo",
  "bayou",
  "beekeeper",
  "bikini",
  "blitz",
  "blizzard",
  "boggle",
  "bookworm",
  "boxcar",
  "boxful",
  "buckaroo",
  "buffalo",
  "buffoon",
  "buxom",
  "buzzard",
  "buzzing",
  "buzzwords",
  "caliph",
  "cobweb",
  "cockiness",
  "croquet",
  "crypt",
  "curacao",
  "cycle",
  "daiquiri",
  "dirndl",
  "disavow",
  "dizzying",
  "duplex",
  "dwarves",
  "embezzle",
  "equip",
  "espionage",
  "euouae",
  "exodus",
  "faking",
  "fishhook",
  "fixable",
  "fjord",
  "flapjack",
  "flopping",
  "fluffiness",
  "flyby",
  "foxglove",
  "frazzled",
  "frizzled",
  "fuchsia",
  "funny",
  "gabby",
  "galaxy",
  "galvanize",
  "gazebo",
  "giaour",
  "gizmo",
  "glowworm",
  "glyph",
  "gnarly",
  "gnostic",
  "gossip",
  "grogginess",
  "haiku",
  "haphazard",
  "hyphen",
  "iatrogenic",
  "icebox",
  "injury",
  "ivory",
  "ivy",
  "jackpot",
  "jaundice",
  "jawbreaker",
  "jaywalk",
  "jazziest",
  "jazzy",
  "jelly",
  "jigsaw",
  "jinx",
  "jiujitsu",
  "jockey",
  "jogging",
  "joking",
  "jovial",
  "joyful",
  "juicy",
  "jukebox",
  "jumbo",
  "kayak",
  "kazoo",
  "keyhole",
  "khaki",
  "kilobyte",
  "kiosk",
  "kitsch",
  "kiwifruit",
  "klutz",
  "knapsack",
  "larynx",
  "lengths",
  "lucky",
  "luxury",
  "lymph",
  "marquis",
  "matrix",
  "megahertz",
  "microwave",
  "mnemonic",
  "mystify",
  "naphtha",
  "nightclub",
  "nowadays",
  "numbskull",
  "nymph",
  "onyx",
  "ovary",
  "oxidize",
  "oxygen",
  "pajama",
  "peekaboo",
  "phlegm",
  "pixel",
  "pizazz",
  "pneumonia",
  "polka",
  "pshaw",
  "psyche",
  "puppy",
  "puzzling",
  "quartz",
  "queue",
  "quips",
  "quixotic",
  "quiz",
  "quizzes",
  "quorum",
  "razzmatazz",
  "rhubarb",
  "rhythm",
  "rickshaw",
  "schnapps",
  "scratch",
  "shiv",
  "snazzy",
  "sphinx",
  "spritz",
  "squawk",
  "staff",
  "strength",
  "strengths",
  "stretch",
  "stronghold",
  "stymied",
  "subway",
  "swivel",
  "syndrome",
  "thriftless",
  "thumbscrew",
  "topaz",
  "transcript",
  "transgress",
  "transplant",
  "triphthong",
  "twelfth",
  "twelfths",
  "unknown",
  "unworthy",
  "unzip",
  "uptown",
  "vaporize",
  "vixen",
  "vodka",
  "voodoo",
  "vortex",
  "voyeurism",
  "walkway",
  "waltz",
  "wave",
  "wavy",
  "waxy",
  "wellspring",
  "wheezy",
  "whiskey",
  "whizzing",
  "whomever",
  "wimpy",
  "witchcraft",
  "wizard",
  "woozy",
  "wristwatch",
  "wyvern",
  "xylophone",
  "yachtsman",
  "yippee",
  "yoked",
  "youthful",
  "yummy",
  "zephyr",
  "zigzag",
  "zigzagging",
  "zilch",
  "zipper",
  "zodiac",
  "zombie"
];

void guessTheWord() {
  int totalGuessAllowed = 0;
  String computerGuess = words[Random().nextInt(words.length)];
  int computerWordLength = computerGuess.length;
  //List<String> charactersInWord = computerGuess.split('');
  List<String> charactersGussedAtPosition =
      List<String>.filled(computerGuess.length, " * ", growable: false);
  List<String> characters = computerGuess.split('');
  Map<String, bool> characterGussed = <String, bool>{};
  String guessedCharacterFromWord = charactersGussedAtPosition.join();
  while (totalGuessAllowed < 6) {
    print("Total number of ${6 - totalGuessAllowed} attempt left out of 6.");
    print("Total number of $computerWordLength letters in word.");
    print("Attempted guess :: $characterGussed");
    print(
        "Character put at location where guess matches :: $guessedCharacterFromWord");
    print("Guess the next character in the word");
    String userGussedChar =
        stdin.readLineSync().toString().trim().toLowerCase();
    if (userGussedChar.length == 1) {
      // If the user guesses a letter they had already guessed,
      // don’t penalize them - let them guess again.
      if (characterGussed.keys.contains(userGussedChar)) {
        continue;
      }

      if (computerGuess.contains(userGussedChar)) {
        for (var i = 0; i < computerWordLength; i++) {
          if (characters[i] == userGussedChar) {
            charactersGussedAtPosition[i] = userGussedChar;
          }
        }
        characterGussed[userGussedChar] = true;
      } else {
        characterGussed[userGussedChar] = false;
      }
    }

    guessedCharacterFromWord = charactersGussedAtPosition.join();
    print("Here is word shaping using chars :: $guessedCharacterFromWord");
    if (guessedCharacterFromWord == computerGuess && totalGuessAllowed < 6) {
      print("You have been guess the correct word. Hooray! you won it.");
      break;
    }
    totalGuessAllowed++;
  }
  if (totalGuessAllowed == 6) {
    print("Computer won you loses.");
  }
  print("----------------------------");
}

void exercise25() {
  while (true) {
    stdout.writeln('''
In the game of Hangman,
the player only has 6 incorrect guesses (head, body, 2 legs, and 2 arms) before they lose the game.
Would you like yo play, choose below options?
1. Yes
2. No
''');
    int? userChoice = int.tryParse(stdin.readLineSync().toString().trim());
    if (userChoice == null) {
      print("Sorry! enter value in number 1 or 2");
    } else {
      if (userChoice == 2) {
        break;
      }
      guessTheWord();
    }
  }
}
