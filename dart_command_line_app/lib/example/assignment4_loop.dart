/*
Use a loop to count to 10. 
Print each number on the screen.
 At the 5th loop, print out "half way there".
*/

void printNumbersTill10() {
  int value = 1;
  do {
    print("You are at index $value");
    if(value == 5) {
      print("half way there");
    }
    value++;
  } while(value <= 10);
}