/*
Create a list of people, ask the user for an index.
 Display the person in the list at the index the user supplied.
*/

void assignment2ListPeople() {

  List gods = ['Shankar', 'Shyam', 'Ram', 'Ganesha'];
  print(gods);

  List<String> people = <String>[];
  people.add('Shankar');
  people.addAll(['Ram', 'Shyam', 'Brahma', 'Vishanu']);
  people.add('Ganesha');

  print(people);
  print("Total count of peopel is :: ${people.length}, person ar position 3 is :: ${people[3]}");
}