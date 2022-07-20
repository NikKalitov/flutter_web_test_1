// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import '../constants/sizes.dart';
import '../constants/style.dart';

AppBar CustomAppBar(String? title) {
  return AppBar(
    title: Text(title ?? 'Empty title'),
    backgroundColor: greyMain,
    toolbarHeight: appBarHeight.toDouble(),
    elevation: 0,
    centerTitle: true,
    actions: [
      TextButton(
        onPressed: () {},
        child: Text(
          'EN',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.mode_night_outlined,
        ),
      ),
    ],
  );
}
