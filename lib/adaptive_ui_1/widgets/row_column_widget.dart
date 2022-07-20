// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class RowToColumnWidget extends StatelessWidget {
  RowToColumnWidget({Key? key, required this.screenSize}) : super(key: key);

  Size screenSize;
  ScrollController? controller;

  @override
  Widget build(BuildContext context) {
    bool enableScroll = calculateForScroll();
    return Column(children: [
      // Slider(value: value, onChanged: onChanged)
      // ListView()
      SingleChildScrollView(
        scrollDirection: enableScroll == true ? Axis.horizontal : Axis.vertical,
        child: Row(
          key: const PageStorageKey(1),
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            // Icon(Icons.person, size: 60.0),
            // Icon(Icons.padding, size: 60.0),
            // Icon(Icons.pages, size: 60.0),
            // Icon(Icons.phone, size: 60.0),
            // Icon(Icons.hail, size: 60.0),
            // Icon(Icons.home, size: 60.0),
            Container(
              height: 150,
              width: 150,
              color: Colors.amber,
              margin: const EdgeInsets.all(8.0),
            ),

            Container(
              height: 150,
              width: 150,
              color: Colors.red,
              margin: const EdgeInsets.all(8.0),
            ),

            Container(
              height: 150,
              width: 150,
              color: Colors.green,
              margin: const EdgeInsets.all(8.0),
            ),

            Container(
              height: 150,
              width: 150,
              color: Colors.blue,
              margin: const EdgeInsets.all(8.0),
            ),

            Container(
              height: 150,
              width: 150,
              color: Colors.purple,
              margin: const EdgeInsets.all(8.0),
            ),

            Container(
              height: 150,
              width: 150,
              color: Colors.black,
              margin: const EdgeInsets.all(8.0),
            ),

            Container(
              height: 150,
              width: 150,
              color: Colors.greenAccent,
              margin: const EdgeInsets.all(8.0),
            ),
          ],
        ),
      ),
    ]);
  }

  bool calculateForScroll() {
    bool enableScroll = false;
    if (screenSize.width <= 150 * 8) {
      enableScroll = true;
    }
    return enableScroll;
  }
}
