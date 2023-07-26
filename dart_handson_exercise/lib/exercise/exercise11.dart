/*
https://hackmd.io/@kuzmapetrovich/S1x90jWGP
Exercise 11
Write a program that takes a list of numbers for example

a = [5, 10, 15, 20, 25]
and makes a new list of only the first and last elements of the given list.
 For practice, write this code inside a function.
*/

List<int> getResult(List<int> values) {
  List<int> result = [];
  if(values.length == 0 || values.length == 1 ) {
    return result;
  } else {
    result.addAll([values.first, values.last]); 
    return result;
  }
}
void exercise11() {
  final numbers = [5, 10, 15, 20, 25];
  print(getResult(numbers));
  print(getResult([])); // empty list
  print(getResult([30])); // [30]
  print(getResult([20,40])); // [20, 40]
}