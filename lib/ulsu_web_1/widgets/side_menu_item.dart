import 'package:flutter/material.dart';
import '../router.dart';
import '../constants/sizes.dart';
import '../constants/style.dart';

class CustomSideMenuItem extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (path != '') {
          router.go(path);
        }
      },
      child: Container(
        decoration: BoxDecoration(
          // border: Border.all(color: sideMenuIconColor),
          color: Colors.transparent,
        ),
        width: 200,
        height: sideMenuItemHeight.toDouble(),
        child: ListTile(
          title: Text(text),
          leading: Icon(
            icon,
            size: 20,
            color: isActive ? mainBlueColor : sideMenuIconColor,
          ),
        ),
        //   child: Row(
        //     children: [
        //       Icon(
        //         icon,
        //         size: 20,
        //         color: isActive ? mainBlueColor : sideMenuIconColor,
        //       ),
        //       Text(text),
        //     ],
        //   ),
      ),

      // child: ListTile(
      //   title: Text(text),
      //   leading: Icon(
      //     icon,
      //     size: 20,
      //     color: isActive ? mainBlueColor : sideMenuIconColor,
      //   ),
      // ),
    );
  }
}
