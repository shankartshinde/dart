/*
Exercise 6
Ask the user for a string and print out whether this string is a palindrome or not.

A palindrome is a string that reads the same forwards and backwards.
*/

void exercise6() {
  print("is word 'RACECAR' is palindrome:: ${isPalindrome("RACECAR")}");
  print("is word 'madam' is palindrome:: ${isPalindrome("madam")}");
  print("is word 'makeuseof' is palindrome:: ${isPalindrome("makeuseof")}");
  print("is word 'Hannah' is palindrome:: ${isPalindrome("Hannah")}");
}

bool isPalindrome(String inputStr) {
  String source = inputStr.trim().toLowerCase();
  int strLength = source.length;
  bool isPalindrome = false;
  for(int i = 0; i < strLength/2; i++) {
    if(source[i] == source[strLength -1-i]) {
      isPalindrome = true;
    } else {
      isPalindrome = false;
      break;
    }
  }
  return isPalindrome;
}