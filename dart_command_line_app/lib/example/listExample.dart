
void doMyListOperation() {
  print("Decleare list");
  List numbers = [10, 20, 30, 40];
  print("Values in numbers are ${numbers}");
  print("Total number of Items ::  ${numbers.length}");

/*
  List dynamicList = List();
  dynamicList.add(1);
  dynamicList.add("String");
  dynamicList.add(true);
  print(dynamicList);
*/

  List<int> marks = <int>[];
  marks.addAll([60, 55, 70]);
  print("Is array is empty :: ${marks.isEmpty}");
  marks.add(90);
  print("Index of 55 is :: ${marks.indexOf(55)}");
}


void setOperation() {
  // define set

/*
var names = <String>{};
// Set<String> names = {}; // This works, too.
// var names = {}; // Creates a map, not a set.
*/
  Set<String> fruits = <String>{};
  fruits.add('Banana');
  fruits.add('Apple');
  fruits.addAll({'Cherry', 'Orange', 'watermelon', 'Banana'});
  fruits.forEach(print);

  // fruits.forEach { 
  //   print($0);
  // };
  print("Is apple contains in the basket :: ${fruits.contains('Apple')}");

  print("Is Pomogranate contains in the basket :: ${fruits.contains('Pomogranate')}");
}
