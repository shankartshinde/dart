/*
Exercise 21
You, the user, will have in your head a number between 0 and 100.
The program will guess a number, and you, the user, will say whether it is too high, too low, or your number.

At the end of this exchange, your program should print out how many guesses it took to get your number.
*/

import 'dart:io';
import 'dart:math';

void exercise21() {
  stdout.writeln("""Please, think of a number between 0 and 100.
  I will try to guess it and blow your mind.""");

  int max = 100;
  int min = 0;
  int userDirection;
  int guessCount = 1;
  int computerGuess;
  while (true) {
    stdout.writeln(
        "Provide input like below 1. Too low 2. Too high 3. You hit bull eye! ");
    computerGuess = min + Random().nextInt(max - min);
    print("Computer guess number is $computerGuess");

    String? userOptions = stdin.readLineSync();
    if (userOptions == null) {
      print("Sorry! enter value as below");
    } else {
      userDirection = int.tryParse(userOptions) ?? 0;
      //1...50...100
      //1000....9999
      if(userDirection == 3) {
        break;
      } else if(userDirection == 1) {
        // Too low means - min value require to increase
        min = computerGuess+1;
      } else if(userDirection == 2) {
      // Too high means - max value require to decreasey
        max = computerGuess-1;
      }
      guessCount++;
      print("Min :: $min Max :: $max");
    }
  }
  print("Computer took $guessCount to guess the number $computerGuess");
}
