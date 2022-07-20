import 'package:flutter/material.dart';
import '../constants/sizes.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({
    Key? key,
    required this.largeScreen,
    required this.bigScreen,
    required this.mediumScreen,
    required this.smallScreen,
    required this.sideMenu,
  }) : super(key: key);

  final Widget largeScreen;
  final Widget bigScreen;
  final Widget mediumScreen;
  final Widget smallScreen;
  final Widget sideMenu;

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width <= ScreenWidth.smallScreenWidth;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > ScreenWidth.smallScreenWidth &&
        MediaQuery.of(context).size.width <= ScreenWidth.mediumScreenWidth;
  }

  static bool isBigScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > ScreenWidth.mediumScreenWidth &&
        MediaQuery.of(context).size.width <= ScreenWidth.bigScreenWidth;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > ScreenWidth.bigScreenWidth;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (width > ScreenWidth.bigScreenWidth) {
      return Row(
        children: [sideMenu, largeScreen],
      );
    } else if (width <= ScreenWidth.bigScreenWidth &&
        width > ScreenWidth.mediumScreenWidth) {
      return Row(
        children: [sideMenu, bigScreen],
      );
    } else if (width <= ScreenWidth.mediumScreenWidth &&
        width > ScreenWidth.smallScreenWidth) {
      return mediumScreen;
    } else {
      return smallScreen;
    }
  }
}
