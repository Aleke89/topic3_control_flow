import 'dart:io';

void main(List<String> arguments) {
  //Task 1:
  // int? x = int.parse(stdin.readLineSync()!);
  // task1_2(x);

  // Task 2
  // int? x = int.parse(stdin.readLineSync()!);
  // task2_2(x);

  // Task 3:
  //   int? x = int.parse(stdin.readLineSync()!);
  //   print(task3(x));

  // Task 4:
  // int? x = int.parse(stdin.readLineSync()!);
  // print(task4(x));

  // Task 5:
  // int? x = int.parse(stdin.readLineSync()!);
  // print(task5(x));

  // Task 6:
  // int? x = int.parse(stdin.readLineSync()!);
  // task6(x);

  // int? x = int.parse(stdin.readLineSync()!);
  // int? y = int.parse(stdin.readLineSync()!);
  // task6_2(x, y);

  // Task 7:
  // int a = int.parse(stdin.readLineSync()!);
  // int b = int.parse(stdin.readLineSync()!);
  //   var sum = 0;
  // for (int i = a; i < b; i++) {
  //   sum += i;
  // }
  // print(sum / 1000);
  // task7(a, b);

  // Task 8:
  // Қысқаша үштің сегіз дәрежесін бөлек алып, алымында бірден сегізге дейін косындысын тауып алдым. Соңында простой қосу және бөлу

  // int ush = 3;
  // int sum = 0;
  // for (int i = 1; i < 8; i++) {
  //   ush * ush;
  //   sum += i;
  // }
  // print(1 + sum / ush);

  // Task 9:
  // int? x = int.parse(stdin.readLineSync()!);
  // String number = x.toString();

  // a)
  // print(number.contains("3"));

  // b)
  // var lastChar = number[number.length-1];
  // int count = 0;
  // for(int i = 0;i<number.length;i++){
  //     if(number[i]==lastChar){
  //       count++;
  //     }
  // }
  // print(count);

  // в)
  // var count = 0;
  // for(int i = 0;i<number.length;i++){
  //   if(int.parse(number[i])%2==0){
  //     count++;
  //   }
  // }
  // print(count);

  // g)
  // var sum = 0;
  // for (int i = 0; i < number.length ; i++) {
  //   if(int.parse(number[i])<5){
  //     sum+=int.parse(number[i]);
  //   }
  // }
  // print(sum);

  // d)
  // var sum = 0;
  // for (int i = 0; i < number.length ; i++) {
  //   if(int.parse(number[i])>5){
  //     sum+=int.parse(number[i]);
  //   }
  // }
  // print(sum);

  // e)
  // var sum = 0;
  // for (int i = 0; i < number.length ; i++) {
  //   if(int.parse(number[i])==5 || int.parse(number[i])==0){
  //     sum++;
  //   }
  // }
  // print(sum);

  // Task 10:
  // var numbers = <int>[1, 2, 3,4,5,8,7,9,1,53,0];
  // int? x = int.parse(stdin.readLineSync()!);
  // int sum = 0;
  // for(int i = 0;i<numbers.length;i++){
  //   if(numbers[i]==x){
  //     break;
  //   }
  //   sum+=numbers[i];
  // }
  // print(sum);
}

task7(int a, int b) {
  var sum = 0;
  for (int i = a; i < b; i++) {
    sum += i;
  }
  print(sum / 1000);
}

task6_2(int x, int y) {
  int result = 0;
  for (int i = x; i < y; i++) {
    result += i;
  }
  print(result);
}

task6(x) {
  int result = 0;
  for (int i = 100; i < 600; i++) {
    result += i;
  }
  print(result);
}

bool task5(int x) {
  return x ~/ 100000 + x ~/ 10000 % 10 + x ~/ 1000 % 10 ==
      x ~/ 100 % 10 + x ~/ 10 % 10 + x % 10;
}

bool task4(int number) {
  String numberStr = number.toString();
  var digitCountMap = <String, int>{};

  for (var digit in numberStr.split('')) {
    digitCountMap[digit] = (digitCountMap[digit] ?? 0) + 1;
  }

  return digitCountMap.values.any((count) => count == 3);
}

bool task3(int x) {
  String numberString = x.toString();
  return numberString == numberString.split('').reversed.join('');
}

task2_2(int x) {
  int firstDigit = x ~/ 100;
  int secondDigit = x ~/ 10 % 10;
  int thirdDigit = x % 10;
  if ((firstDigit == 3 || firstDigit == 6 || firstDigit == 9) ||
      (secondDigit == 3 || secondDigit == 6 || secondDigit == 9) ||
      (thirdDigit == 3 || thirdDigit == 6 || thirdDigit == 9)) {
    print("Number has 3 or 6 or 9");
  }
}

task2(int x) {
  int firstDigit = x ~/ 100;
  int secondDigit = x ~/ 10 % 10;
  int thirdDigit = x % 10;
  if ((firstDigit == 4 || firstDigit == 7) ||
      (secondDigit == 4 || secondDigit == 7) ||
      (thirdDigit == 4 || thirdDigit == 7)) {
    print("Number has 4 or 7");
  }
}

task1(int x) {
  int firstDigit = x ~/ 10;
  int secondDigit = x % 10;
  if ((firstDigit == 4 || firstDigit == 7) ||
      (secondDigit == 4 || secondDigit == 7)) {
    print("Number has 4 or 7");
  }
}

task1_2(int x) {
  int firstDigit = x ~/ 10;
  int secondDigit = x % 10;
  if ((firstDigit == 3 || firstDigit == 6 || firstDigit == 9) ||
      (secondDigit == 3 || secondDigit == 6 || secondDigit == 9)) {
    print("Number has 3 or 6 or 9");
  }
}
