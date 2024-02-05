import 'package:flutter/material.dart';
import 'package:trivia_with_flutter/main.dart';
import 'package:trivia_with_flutter/utils/colours/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(title: const Text('Welcome to Trivia!')),
        backgroundColor: isLightTheme ? Light.background : Dark.background,
        body: ListView(
          children: [
            Container(
              height: screenSize.height * .35,
              width: screenSize.width,
              color: Colors.white10,
              child: Center(
                child: Text(
                  "Welcome to Trivia!",
                  style: TextStyle(
                      fontFamily: "Rubik-Regular",
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
              ),
            ),
            Container(
              height: screenSize.height * .35,
              width: screenSize.width,
              color: Colors.white38,
              child: Center(
                child: Text(
                  "Welcome to Trivia!",
                  style: TextStyle(
                      fontFamily: "Rubik-Regular",
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
              ),
            ),
            Container(
              height: screenSize.height * .35,
              width: screenSize.width,
              color: Colors.white10,
              child: Center(
                child: Text(
                  "Welcome to Trivia!",
                  style: TextStyle(
                      fontFamily: "Rubik-Regular",
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
              ),
            ),
            Container(
              height: screenSize.height * .35,
              width: screenSize.width,
              color: Colors.white38,
              child: Center(
                child: Text(
                  "Welcome to Trivia!",
                  style: TextStyle(
                      fontFamily: "Rubik-Regular",
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
              ),
            ),
          ],
        ));
  }
}
