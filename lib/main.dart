import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:trivia_with_flutter/screen/selectionpage.dart';
=======
import 'package:provider/provider.dart';
import 'package:trivia_with_flutter/screen/entry/entry_screen.dart';
import 'package:trivia_with_flutter/utils/providers/navigation/navigatorprovider.dart';
import 'package:trivia_with_flutter/utils/providers/theme/themeprovider.dart';
>>>>>>> 97059d2ec163d6a9bef24b1f906f1b0a98b75082

void main() {
  Provider.debugCheckInvalidValueType = null;

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return MaterialApp(
      title: 'QuizCraft',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: SelectionPage()
=======
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => NavigatorProvider()),
        // ChangeNotifierProvider(create: (_) => ""()),
        // ChangeNotifierProvider(create: (_) => ""()),
        // ChangeNotifierProvider(create: (_) => ""()),
      ],
      child: MaterialApp(
        title: 'QuizCraft',
        debugShowCheckedModeBanner: false,
        home: Consumer<ThemeProvider>(
          builder: (context, themeProvider, child) {
            return const EntryPage();
          },
        ),
      ),
>>>>>>> 97059d2ec163d6a9bef24b1f906f1b0a98b75082
    );
  }
}
