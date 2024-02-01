import 'package:flutter/material.dart';
import 'package:trivia_with_flutter/utils/colours/colors.dart';

import '../../utils/strings/strings.dart';

class EntryPage extends StatefulWidget {
  const EntryPage({super.key});

  @override
  State<EntryPage> createState() => _EntryPageState();
}

class _EntryPageState extends State<EntryPage> {
  @override
  Widget build(BuildContext context) {
    // late bool isLightTheme = true;
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: isLightTheme ? Light.background : Dark.background,
      body: SizedBox(
        width: screenSize.width,
        height: screenSize.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenSize.height * .1,
              ),
              // Text In First Page
              Text(
                Entry.h1,
                style: TextStyle(
                    fontFamily: "Lato",
                    color: isLightTheme ? Light.text : Dark.text,
                    // color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 37),
              ),
              SizedBox(
                height: screenSize.height * .01,
              ),
              Text(
                Entry.h2,
                style: TextStyle(
                    fontFamily: "Lato",
                    color: isLightTheme ? Light.text : Dark.text,
                    fontWeight: FontWeight.bold,
                    fontSize: 21),
              ),
              const Spacer(),
              // I Have already an account/Create Account Button
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 4.5, left: 4.5),
                    child: Container(
                      margin: EdgeInsets.only(top: screenSize.height * .04),
                      height: screenSize.height * .06,
                      width: screenSize.width * .95,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              isLightTheme ? Light.text : Dark.text),
                        ),
                        onPressed: () {},
                        child: const Text(''),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: screenSize.height * .04),
                    height: screenSize.height * .06,
                    width: screenSize.width * .95,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            isLightTheme ? Light.button1 : Dark.button1),
                      ),
                      onPressed: () {},
                      child: Text(
                        Entry.haveAcc,
                        style: TextStyle(
                            color: isLightTheme ? Light.text : Dark.text),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 4.5, left: 4.5),
                    child: Container(
                      margin: EdgeInsets.only(top: screenSize.height * .04),
                      height: screenSize.height * .06,
                      width: screenSize.width * .95,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                isLightTheme ? Light.text : Dark.text),
                          ),
                          onPressed: () {},
                          child: const Text('')),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: screenSize.height * .04),
                    height: screenSize.height * .06,
                    width: screenSize.width * .95,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            isLightTheme ? Light.button1 : Dark.button1),
                      ),
                      onPressed: () {},
                      child: Text(
                        Entry.getStarted,
                        style: TextStyle(
                            color: isLightTheme ? Light.text : Dark.text),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: screenSize.height * .1,
              ),
            ],
          ),
        ),
      ),
    ); //
  }
}
