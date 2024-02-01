import 'package:flutter/material.dart';
import 'package:trivia_with_flutter/utils/colours/colors.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(

      body: SizedBox(
        width: double.infinity,
        height: screenSize.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: screenSize.height * .1,
            ),
            Text(
              "Everything is here to enjoy Quiz",
              style: TextStyle(
                  fontFamily: "Lato",
                  color: Light.text,
                  fontWeight: FontWeight.bold,
                  fontSize: 37),
            ),
            SizedBox(height: screenSize.height * .01,),
            Text(
              "quiz your knowledge with our app.",
              style: TextStyle(
                  fontFamily: "Lato",
                  color: Light.text,
                  fontWeight: FontWeight.bold,
                  fontSize: 21),
            ),
            const Spacer(),
            
          ],
        ),
      ),
    );
  }
}
