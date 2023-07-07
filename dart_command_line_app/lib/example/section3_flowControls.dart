import 'dart:core';

void controlFlowIfElse(int age) {
  print("----------If- else--------");
  //->toddler (between 1 to 2 years)
  //Toddler: 1-3 yrs
  //Preschool: 3-5 yrs.
  //Gradeschooler: 5-12 yrs
  //-> teenager (12 years to  19 years)
  // -> young adult (between 19 to 25 years)
  
  if(age >= 1 && age <= 3) {
    print("Your age is ${age}, you are Toddler");
  } else if(age > 3 && age <= 5) {
    print("Your age is ${age}, you are in pre school");
  } else if(age > 5 &&  age <= 12) {
    print("Your age is ${age}, you are teenager");
  } else if(age>= 19 && age <= 25) {
    print("Your age is ${age}, you are young adult");
  }  else if (age <= 60) {
    print("Your age is ${age}, you are adult");
  } else {
    print("Your age is ${age}, you are senior citizen");
  }
}

void controlFlowSwitch() {
  int number = 100;
  switch (number) {
    case 50: print("Fifty");
      break;
    case 100: print("Century");
      break;
    case 200: print("Double century");
    default:
        print("you score is ${number}");
  }
}

void controlFlowDoWhile() {
  int total = 0;
  int number = 1234;
  int orignalValue = number;
  do {
    var reminder = number%10;
    number = (number/10).toInt();
    total = total + reminder;
    print("final num :: ${number}");
  } while (number > 0);

  print("Sum of digits of number $orignalValue is $total");
}

void doPracticeWithControlFlows() {
  //controlFlowIfElse(age: 2);
  controlFlowIfElse(39);
  controlFlowSwitch();
  controlFlowDoWhile();
}
