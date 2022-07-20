// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class MainWidget extends StatefulWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  late double width;
  late double height;
  bool isDeclared = false;

  void recalculateResolution() {
    Size screenSize = MediaQuery.of(context).size;
    width = screenSize.width;
    height = screenSize.height;

    if (isDeclared == false) {
      isDeclared = true;
    }
    print('MainWidget\nheight: $height width: $width');
    // setState(() {});
  }

  Size recalculateSize() {
    Size screenSize = MediaQuery.of(context).size;
    return screenSize;
  }

  @override
  void initState() {
    super.initState();
    print('initState of MainWidget');
    // recalculateResolution();
  }

  @override
  Widget build(BuildContext context) {
    recalculateResolution();
    print('build of MainWidget');
    return isDeclared == false
        ? const Text('loading')
        : Container(
            height: height / 2,
            width: width / 2,
            color: Colors.blueGrey,
          );
  }
}
