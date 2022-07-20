// ignore_for_file: prefer_const_constructors_in_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/style.dart';
import '../constants/sizes.dart';
import '../controllers/menu_controller.dart';

class CustomLogo extends StatelessWidget {
  CustomLogo({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final menuController = MenuController.instance;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        value
            ? menuController.onHover(text)
            : menuController.onHover('not hovering');
      },
      onTap: () {
        if (!menuController.isActive(text)) {
          menuController.changeActiveItemTo(text);
        }
      },
      child: Obx(
        () => Container(
          color:
              menuController.isHovering(text) || menuController.isActive(text)
                  ? Colors.white
                  : Colors.transparent,
          height: 110,
          width: ScreenWidth.sideMenuWidth.toDouble(),
          child: Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: Icon(
              icon,
              size: 100,
              color: CustomColors.greyMain,
            ),
          ),
        ),
      ),
    );
  }
}
