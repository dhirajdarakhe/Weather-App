// import "dart:io";
//
//
// void main() {
//   performTask();
// }
//
// void performTask()
// {
//   task1();
//   task2();
//   task3();
// }
//
// void task1(){String m1 = "DHIRAJ- 01";print(m1);}
// void task2(){
//   Duration threeSecond = Duration(seconds:3);
//   sleep(threeSecond);
//    String m2 = "DHIRAJ- 02";print(m2);
// }
// void task3(){String m3 = "DHIRAJ- 03";print(m3);}

// import "dart:io";
//
//
// void main() {
//   performTask();
// }
//
// void performTask()
// {
//   task1();
//   task2();
//   task3();
// }
//
// void task1(){String m1 = "DHIRAJ- 01";print(m1);}
// void task2(){
//   Duration threeSecond = Duration(seconds:3);
//  Future.delayed(threeSecond ,(){
//    String m2 = "DHIRAJ- 02";print(m2);
//  });
//
// }
// void task3(){String m3 = "DHIRAJ- 03";print(m3);}


//
// import "dart:io";
//
//
// void main() {
//   performTask();
// }
//
// void performTask()
// {
//   task1();
//   String d = task2();
//   task3(d);
// }
//
// void task1(){String m1 = "DHIRAJ- 01";print(m1);}
// String  task2(){
//   Duration threeSecond = Duration(seconds:3);
//   Future.delayed(threeSecond ,(){
//     String m2 = "DHIRAJ- 02";print(m2);
//     return 'DHITAJ';
//   });
//
// }
// void task3(String s){String m3 = "DHIRAJ- 03";print('g$s');}













int main()
{
String myString = 'abc';
try{
  double myString1 = double.parse(myString);
  print(myString1);
}
catch(e){print(e);};

}