// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import '../constants/sizes.dart';
import '../constants/style.dart';

AppBar CustomAppBar(String? title) {
  return AppBar(
    title: AppBarDrawerIcon(),
    backgroundColor: mainBlueColor,
    toolbarHeight: appBarHeight.toDouble(),
    elevation: 0,
    actions: actionsForAppBar,
  );
}

class AppBarDrawerIcon extends StatelessWidget {
  const AppBarDrawerIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(Icons.menu),
    );
  }
}

List<Widget> actionsForAppBar = [
  Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.settings),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.person),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: Text('Константиновский\nКонстантин'),
      ),
    ],
  )
];
