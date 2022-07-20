import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/style.dart';
import '../constants/sizes.dart';
import '../controllers/menu_controller.dart';

class CustomIcon extends StatelessWidget {
  CustomIcon({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final menuController = MenuController.instance;

  final TextStyle textStyle = TextStyle(
    color: CustomColors.greyMain,
    fontSize: 15,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w100,
  );

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
          height: 90,
          width: ScreenWidth.sideMenuWidth.toDouble(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: CustomColors.greyMain,
                  size: 50,
                ),
                Text(
                  text,
                  style: textStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
