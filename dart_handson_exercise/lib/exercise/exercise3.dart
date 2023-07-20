/*
https://hackmd.io/@kuzmapetrovich/S1x90jWGP
Take a list, say for example this one:

  a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
and write a program that prints out all the elements of the list that are less than 5.
*/
void exercise3() {
  List<int> array = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  var resultNums = array.where((element) {
    return element < 5;
  });
  print(resultNums);
}