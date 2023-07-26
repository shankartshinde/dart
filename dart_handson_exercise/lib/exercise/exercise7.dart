/*
https://hackmd.io/@kuzmapetrovich/S1x90jWGP
Exercise 7
Let’s say you are given a list saved in a variable:

a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]. 
Write a Dart code that takes this list and makes a new list that has only the even elements of this list in it.
*/
import 'dart:io';

void exercise7() {
  var numbers = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  stdout.writeln("Given list as a input");
  stdout.writeln(numbers);

stdout.writeln("----------Solution1----------");
// In other words, Iterable.
//takeWhile will stop iterating once it reaches the first item that does not satisfy the test callback.
  var evenNumbers = numbers.takeWhile((value) => !value.isOdd);
  stdout.writeln("Output using Iterable.takeWhile  :: $evenNumbers");
  stdout.writeln("Output using Iterable.takeWhile  :: ${evenNumbers.toList()}");
  stdout.writeln("Output using Iterable.takeWhile  :: ${evenNumbers.runtimeType}");

stdout.writeln("----------Solution2----------");
// Returns a new lazy Iterable with all elements that satisfy the predicate test.
  var evenNumberUsingWhere = numbers.where((element) => element.isEven);
  stdout.writeln("Output using Iterable.where  :: $evenNumberUsingWhere");
  stdout.writeln(
      "Output using Iterable.where  :: ${evenNumberUsingWhere.toList()}");
  stdout.writeln(
      "Output using Iterable.where  :: ${evenNumberUsingWhere.runtimeType}");

stdout.writeln("----------Solution3----------");
  List<int> result = [];
  for (var value in numbers) {
    if (value % 2 == 0) result.add(value);
  }
  stdout.writeln("Output using for...in loop :: $result");

/*
  final numbers = <int>[1, 2, 3, 5, 6, 7];
  var result = numbers.takeWhile((x) => x < 5); // (1, 2, 3)
  print(result);
  print(result.toList());
  print(result.runtimeType);
  // result = numbers.takeWhile((x) => x != 3); // (1, 2)
  // result = numbers.takeWhile((x) => x != 4); // (1, 2, 3, 5, 6, 7)
  // result = numbers.takeWhile((x) => x.isOdd); // (1)
  */
}
