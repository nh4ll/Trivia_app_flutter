import 'package:flutter/material.dart';
import 'package:trivia_with_flutter/screen/signup/signup.dart';

void main() {
  runApp(const MainApp());
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'QuizCraft',
        debugShowCheckedModeBanner: false,
        // theme: ThemeData.dark().copyWith(
        //   scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
        // ),
        home: const SignupPage());
  }
}
