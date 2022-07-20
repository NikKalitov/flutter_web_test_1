// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import '../constants/style.dart';
import '../constants/sizes.dart';
import '../constants/icon_names.dart';
import './custom_icon.dart';
import './custom_logo.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: ScreenWidth.sideMenuWidth.toDouble(),
      color: CustomColors.whiteSecondary,
      child: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomLogo(icon: Icons.fitbit_rounded, text: customLogo),
            CustomIcon(icon: Icons.layers, text: stackIcon),
            CustomIcon(icon: Icons.settings, text: servicesIcon),
            CustomIcon(icon: Icons.school_sharp, text: schoolIcon),
            CustomIcon(icon: Icons.handshake, text: cooperationIcon),
            CustomIcon(icon: Icons.rocket, text: careerIcon),
            CustomIcon(icon: Icons.contacts, text: contactsIcon),
          ],
        ),
      ),
    );
  }
}
