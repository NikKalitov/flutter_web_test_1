// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import '../constants/style.dart';
import '../helpers/responsiveness.dart';

AppBar TopNavBar(BuildContext context, GlobalKey<ScaffoldState> scaffoldKey) {
  return AppBar(
    backgroundColor: CustomColors.whiteSecondary,
    elevation: 0,
    leading: ResponsiveWidget.isBigScreen(context) == true ||
            ResponsiveWidget.isLargeScreen(context) == true
        ? const Text('')
        : IconButton(
            onPressed: () {
              scaffoldKey.currentState?.openDrawer();
            },
            icon: Icon(
              Icons.menu,
              size: 25,
              color: CustomColors.greyForBigText,
            ),
          ),
    actions: [
      TextButton(
        onPressed: () {},
        child: Text(
          'EN',
          style: TextStyle(
            color: CustomColors.greyMain,
            fontSize: 25,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 15, left: 15),
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.nightlight_outlined,
            color: CustomColors.greyMain,
            size: 35,
          ),
        ),
      ),
    ],
  );
}
