/*
Exercise 28
In the previous exercise we saved information about famous scientists’ names and birthdays to disk.

In this exercise, load that JSON file from disk, extract the months of all the birthdays,
and count how many scientists have a birthday in each month.

Your program should output something like:

{
    "May": 3,
    "November": 2,
    "December": 1
}
*/
/*
Learning :: 
1. Read local JSON file
2. Decode String from json file
3. Iterate over object
4. Date conversion and date operations
*/

import 'dart:convert';
import 'dart:io';
import 'package:dart_handson_exercise/exercise/exercise27.dart';

enum Months {
  january,
  february,
  march,
  april,
  may,
  june,
  july,
  august,
  september,
  october,
  november,
  december
}

void exercise28() async {
  String filePath = getJSONFilePath();
  File fileObj = File(filePath);
  String jsonString = await fileObj.readAsString();
  Map<String, dynamic> birthdays = jsonDecode(jsonString);
  Map<Months, int> result = <Months, int>{};
  Months.values.forEach((element) {
    print("Index :: ${element.index}");
    print("HashCode :: ${element.hashCode}");
    result[element] = 0;
  });

  for (var element in birthdays.values) {
    String format = element.toString().replaceAll("/", "-");
    DateTime? date = DateTime.tryParse(format);
    print("format :: $format Date:: ${date} Month :: ${date?.month}");
    Months month = Months.values[date!.month - 1];
    result[month] = result[month]! + 1;  
  }
  print("Number of birthdays of scientist per month");
  print(result);
}