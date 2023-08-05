/*
Exercise 27
In the previous exercise we created a dictionary of famous scientists’ birthdays.

In this exercise, modify your program from Part 1 to load the birthday dictionary from a JSON file on disk,
 rather than having the dictionary defined in the program.

Bonus:

Ask the user for another scientist’s name and birthday to add to the dictionary,
and update the JSON file you have on disk with the scientist’s name. 
If you run the program multiple times and keep adding new names,
your JSON file should keep getting bigger and bigger.
*/
/*
Learning : 
1. Sorting of custom object using 'sort' function
2. Get local directory path using 'Directory'
3. Read local file(txt, json) using 'File' classs and print content line by line
4. JSON decoding 
*/

import 'dart:io';
import 'dart:convert';
import 'dart:async';

const String FILEPATH =
    "C:\\ShankarShinde\\Flutter\\Dart\\dart\\dart_handson_exercise\\lib\\exercise\\birthday_history.json";

class Todo {
  const Todo(this.title, this.priority);
  final String title;
  final int priority;
}

final List<Todo> _todos = [
  Todo("Learn flutter", 1),
  Todo("Explore other cources", 3),
  Todo("Practice flutter", 2)
];

List<Todo> getSorted({String order = "ascending"}) {
  // Create a local copy
  final localTodos = List.of(_todos);
  localTodos.sort(
    (a, b) {
      int compareResult = a.title.compareTo(b.title);
      return order == "ascending" ? compareResult : -compareResult;
    },
  );
  return localTodos;
}

void sortCustomObject() {
  print("-----ASCENDING-----------");
  getSorted().forEach((element) {
    print(element.title);
  });
  print("-----DESCENDING-----------");
  getSorted(order: "decending").forEach((element) {
    print(element.title);
  });
}

void operationOnJSONString() {
  const jsonString =
      '{"text": "foo", "value": 1, "status": false, "extra": null}';

  final data = jsonDecode(jsonString);
  print(data['text']); // foo
  print(data['value']); // 1
  print(data['status']); // false
  print(data['extra']); // null

  const jsonArray = '''
  [{"text": "foo", "value": 1, "status": true},
   {"text": "bar", "value": 2, "status": false}]
''';

  final List<dynamic> dataList = jsonDecode(jsonArray);
  print(dataList[0]); // {text: foo, value: 1, status: true}
  print(dataList[1]); // {text: bar, value: 2, status: false}

  final item = dataList[0];
  print(item['text']); // foo
  print(item['value']); // 1
  print(item['status']); // false
}

void exercise27() {
//1. Sorting of custom object using 'sort' function
  sortCustomObject();

//2. Get local directory path using 'Directory'
  getCurrentDirectoryPath();
//3. Read local file(txt, json) using 'File' classs and print content line by line
  readJSONFile();
//4. JSON decoding
  operationOnJSONString();
}

void printAllSystemDirectoryFiles() async {
  // Get the system temp directory.
  var systemTempDir = Directory.systemTemp;
  // List directory contents, recursing into sub-directories,
  // but not following symbolic links.
  await for (var entity
      in systemTempDir.list(recursive: true, followLinks: false)) {
    print("entity.path :: ${entity.path}");
  }
}

void getCurrentDirectoryPath() {
  print("--------------Show current directory path --------------");
  Directory currentDirectory = Directory.current;
  String path = currentDirectory.path;
  Uri url = currentDirectory.uri;
  print(path);
  print(url);
}

String getJSONFilePath() {
  Directory current = Directory.current;
  return "${current.path}\\lib\\exercise\\birthday_history.json";
}

void readJSONFile() async {
  print("--------------Read JSON file using relative file path --------------");
  final file = File(getJSONFilePath());
  String jsonString = await file.readAsString();
  final jsonObject = jsonDecode(jsonString);
  jsonObject["Subrahmanyan Chandrasekhar"] = "1910/10/19";
  jsonObject["Stephanie Kwolek"] = "1923/07/11";
  print("JSON Object ::: $jsonObject");
  //file.writeAsString(jsonEncode(jsonObject));
  print("JSON encode :: ${jsonEncode(jsonObject)}");
  file.writeAsStringSync(jsonEncode(jsonObject));
}

void readFromFileLineByLine() async {
  print(
      "--------------Read JSON file line by line using relative file path  --------------");
  final file = File(FILEPATH);
  Stream<String> lines = file
      .openRead()
      .transform(utf8.decoder) // Decode bytes to UTF-8.
      .transform(LineSplitter()); // Convert stream to individual lines.
  try {
    await for (var line in lines) {
      print('$line: ${line.length} characters');
    }
    print('File is now closed.');
  } catch (e) {
    print('Error: $e');
  }
}
