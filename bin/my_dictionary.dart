import 'dart:io';
import 'package:my_dictionary/dictionary.dart';

void main(List<String> arguments)async {
 if (arguments.isEmpty){
   print('Missing arguments');
   exit(1);
 }
 DictionaryService _dictionaryService = DictionaryService();
 print(await _dictionaryService.getData(arguments.first));
}


// Singleton Class Example

// class Test {
//   static final _instance = Test();

//   factory Test() {
//     return _instance;
//   }
//   Test.internal();

//   String display() => 'hellow $this';
// }

// void main(List<String> args) {
//   Test t1 = Test();
//   Test t2 = Test();

//   Test t3 = Test.internal();
//   Test t4 = Test.internal();

//   print(t1.hashCode);
//   print(t2.hashCode);
//   print('\n');
//   print(t3.hashCode);
//   print(t4.hashCode);
//   print(t1.display());
//   print(t3.display());
// }



// class ResetPassword{
//   final String userName;
//  final String password;

//   ResetPassword(this.userName,this.password);

//   factory ResetPassword.reset(String name){
//     String newPassword = generateRandomPassword();
//     return ResetPassword(name,newPassword);
//   }

//  static String generateRandomPassword(){
//     //some logic
//     return 'ABC123';
//   }
// }

// void main(List<String> args) {
//   ResetPassword r1 = ResetPassword.reset('amit');
//   print(r1.userName);
//   print(r1.password);
// }


















