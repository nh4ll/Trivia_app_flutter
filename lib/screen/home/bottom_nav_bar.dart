import 'package:flutter/material.dart';

import '../../utils/colours/colors.dart';
import '../../utils/providers/navigation/navigatorprovider.dart';
import '../../utils/providers/theme/themeprovider.dart';


// ignore: must_be_immutable
class MainBottomNavBar extends StatefulWidget {
  MainBottomNavBar(
      {super.key, required this.themeProvider, required this.navigatorProvider});
  ThemeProvider themeProvider;
  NavigatorProvider navigatorProvider;

  @override
  State<MainBottomNavBar> createState() => _MainBottomNavBarState();
}

class _MainBottomNavBarState extends State<MainBottomNavBar> {


  @override
  Widget build(BuildContext context) {
    var backgroundColor = widget.themeProvider.isLightTheme
          ? Light.background
          : Dark.background;
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: backgroundColor,
      currentIndex: widget.navigatorProvider.currentIndex,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.collections), label: 'Collection'),
        BottomNavigationBarItem(icon: Icon(Icons.bolt), label: 'Play'),
        BottomNavigationBarItem(
            icon: Icon(Icons.leaderboard), label: 'Leaderboard'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
      ],
      showSelectedLabels: false,
      selectedIconTheme: IconThemeData(
        size: 40,
          color: widget.themeProvider.isLightTheme ? Light.selectedIcons : Dark.selectedIcons),
      unselectedItemColor: widget.themeProvider.isLightTheme ? Light.unselectedIcons : Dark.unselectedIcons,
      onTap: (value) {
        widget.navigatorProvider.changeIndex(value);
      },
    );
  }
}
