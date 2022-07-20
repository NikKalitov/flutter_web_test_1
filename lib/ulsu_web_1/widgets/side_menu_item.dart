import 'package:flutter/material.dart';
import '../router.dart';
import '../constants/sizes.dart';
import '../constants/style.dart';

class CustomSideMenuItem extends StatefulWidget {
  const CustomSideMenuItem({
    Key? key,
    required this.icon,
    required this.path,
    required this.text,
    required this.isActive,
  }) : super(key: key);

  final IconData icon;
  final String path;
  final String text;
  final bool isActive;

  @override
  State<CustomSideMenuItem> createState() => _CustomSideMenuItemState();
}

class _CustomSideMenuItemState extends State<CustomSideMenuItem> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.path != '') {
          router.go(widget.path);
        }
      },
      onHover: (value) {
        setState(() {
          isHovering = value;
        });
      },
      child: Container(
        color: isHovering ? whiteSecondary : Colors.transparent,
        width: sideMenuWidth.toDouble(),
        height: sideMenuItemHeight.toDouble(),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Icon(
                widget.icon,
                size: 40,
                color: widget.isActive ? mainBlueColor : sideMenuIconColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(widget.text),
            ),
          ],
        ),
      ),
    );
  }
}
