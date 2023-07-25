/*
Take two lists, for example:

  a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]

  b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
and
 write a program that returns a list that contains only the elements that are common between them (without duplicates).
 Make sure your program works on two lists of different sizes.
*/

void exercise5() {
  List<int> firstList = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> secondList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

  int firstListLength = firstList.length;
  int secondListLength = secondList.length;

  List<int> commonElementList = [];

  if (firstListLength > secondListLength) {
    commonElementList = findCommonElement(firstInputList: firstList, secondInputList: secondList);
  } else {
    commonElementList = findCommonElement(firstInputList: secondList, secondInputList: firstList);
  }
  print(commonElementList);
}

List<int> findCommonElement({required List<int> firstInputList, required List<int> secondInputList}) {
  List<int> result = [];
  if(secondInputList.isEmpty) {
    Set<int> numbersSet = <int> {};
    numbersSet.addAll(firstInputList);
    return result = numbersSet.toList();
  }

  
  for(var source in firstInputList) {
    if (result.contains(source)) {
      continue;
    }
    for(int target in secondInputList) {
      if(source == target && !result.contains(source)) {
        result.add(source);
        break;
      }
    }
  }
    
  return result;
}
