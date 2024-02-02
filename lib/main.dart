import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trivia_with_flutter/screen/entry/entry_screen.dart';
import 'package:trivia_with_flutter/screen/signup/signup_screen.dart';
import 'package:trivia_with_flutter/utils/providers/theme/themeprovider.dart';

void main() {
  runApp(const MainApp());
}
bool isLightTheme = true;

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        title: 'QuizCraft',
        debugShowCheckedModeBanner: false,
        home: MultiProvider(
          providers: [
            ListenableProvider(create: (_) =>ThemeProvider()),
            // Provider(create: (_) =>ThemeProvider()),
            // Provider(create: (_) =>ThemeProvider()),
            // Provider(create: (_) =>ThemeProvider()),
            // ,
            
          ],
          // child: const SignupEX()
          child: const EntryPage()
        ),
        
        );
  }
}
