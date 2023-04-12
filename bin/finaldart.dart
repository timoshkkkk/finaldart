import 'dart:io';
import 'dart:math';

void main() {
  funcOne();
  
  

}


 


 funcOne() {
  
int a; 
  do {
    print('Введите число');
   a = int.parse(stdin.readLineSync()!);
  
    if(a >= 0) {
   print('blowe nulya');
    }else {
      print('menwe nulya');
    }
  } while (a != 'stop' || a != 'стоп');
 }

 funcTwo() {
   List<int> a = [1, 2,3 ,4, 5,6 ,7,8,9];
  List<int> even = [];
  List<int> odd = [];

  for(int a in a) {
    if(a % 2 == 0) {
even.add(a);
    } else {
      odd.add(a);
    }
    
  }
  print(odd);
    print(even);
 }

 funcThree() {
  print('Введите год рождения');
  int birthYear = int.parse(stdin.readLineSync()!);
  print('Введите месяц рождения');
  int birthMonth = int.parse(stdin.readLineSync()!);
  print('Введите день рождения');
  int birthDay = int.parse(stdin.readLineSync()!);

  DateTime now = DateTime.now();
  DateTime birthday = DateTime(birthYear, birthMonth, birthDay);

  Duration difference = now.difference(birthday);

int years = difference.inDays ~/ 365;
int month = (difference.inDays % 365) ~/ 30;
int days = (difference.inDays % 365) % 30;

print('Ваш возраст $years $month $days');
 }