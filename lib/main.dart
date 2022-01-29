import 'package:amit/Login.dart';
import 'package:amit/SignUp.dart';
import 'package:amit/taskscreen/TaskScr.dart';
import 'package:amit/res/theme.dart';
import 'package:flutter/material.dart';
import 'BotNavBar.dart';
import 'Category.dart';
import 'todo/Hello.dart';
import 'HomePage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Sample App';

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      title: _title,
      home: BotNavBar(),
    );
  }
}
// import 'package:flutter/material.dart';
// void main(){
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(),
//     );
//
//   }
// }
