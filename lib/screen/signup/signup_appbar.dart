import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trivia_with_flutter/main.dart';
import 'package:trivia_with_flutter/utils/colours/colors.dart';
import 'package:trivia_with_flutter/utils/providers/theme/themeprovider.dart';

AppBar buildAppBar(BuildContext context) {
  var screenSize = MediaQuery.of(context).size;
  return AppBar(
    backgroundColor: isLightTheme ? Light.background : Dark.background,
    elevation: 0.0,
    titleSpacing: 12.0,
    toolbarHeight: screenSize.height * .08,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: isLightTheme ? Light.icons : Dark.icons,
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    ),
    // actions: [
    //   IconButton(
    //       onPressed: () {
    //         context.read<ThemeProvider>().changeTheme();
    //       },
    //       icon: Icon(isLightTheme ? Icons.sunny : Icons.mode_night_outlined)),
    // ],
  );
}
