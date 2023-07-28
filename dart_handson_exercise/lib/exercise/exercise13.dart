/*
Exercise 13:
Write a program (function) that takes a list 
Then returns a new list that contains all the elements of the first list minus all the duplicates.
*/

List<int> removeDuplicate(List<int> values) {
  Map<int,bool> elements = {};
  for (var value in values) {
    if(elements.containsKey(value)) continue;
    elements.addAll({value: true});
  }
  return elements.keys.toList(growable: false);
}

void exercise13() {
  final numbers = [0,1,2,1,3];
  final result = removeDuplicate(numbers);
  print(result);
}