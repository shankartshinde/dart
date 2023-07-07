import 'dart:io';
import 'dart:collection';

void assignmentUserInput() {
  stdout.writeln("Which organisation you works?");
  String? companyName = stdin.readLineSync();

  stdout.write("Enter office location");
  String? location = stdin.readLineSync();

  stdout.write("Enter total seat capcity");
  String? seatCount = stdin.readLineSync();

  print("-----------Office details-----------");
  String details = """
  Office Name       : ${companyName?.trim()}
  Office location   : ${location?.trim()}
  Office Seat Count : ${seatCount?.trim()}
  """;
  print(details);
}

void assignmentPersonalUserDetails() {
    stdout.write("What is your first name?\n\r");
  String? firstName = stdin.readLineSync();
  print("Your first name is :: ${firstName}");

  stdout.write("What is your family name?\n\r");
  String? familyName = stdin.readLineSync();
  print("Your family name: ${familyName}");

  String fullName = "${firstName?.trim()}  ${familyName?.trim()}";
  print("Your full name is: ${fullName}");
}

void queueOperation() {
  Queue busQueue = Queue();
  busQueue.add("Solapur");
  busQueue.add("Mohal");
  busQueue.add("Indapur");
  busQueue.addAll(['Bhigvan', 'Kurkumbh', 'Patas']);
  busQueue.addFirst("Hyderabad");
  busQueue.addLast('Pune');
  print(busQueue);
  busQueue.forEach(print);
  print(" Is Hadpsar in the queue :: ${busQueue.contains('Hadpsar')}");
  print(" Is Patas in the queue :: ${busQueue.contains('Patas')}");
}