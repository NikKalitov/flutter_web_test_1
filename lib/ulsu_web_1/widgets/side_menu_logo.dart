import 'package:flutter/material.dart';
import '../router.dart';
import '../constants/sizes.dart';

class CustomSideMenuItem extends StatelessWidget {
  const CustomSideMenuItem({
    Key? key,
    required this.icon,
    required this.path,
    required this.isActive,
  }) : super(key: key);

  final IconData icon;
  final String path;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (path != '') {
          router.go(path);
        }
      },
      child: Container(
        color: isActive ? Colors.white : Colors.transparent,
        width: 100,
        height: sideMenuItemHeight.toDouble(),
        child: Icon(
          icon,
          size: 80,
        ),
      ),
    );
  }
}
