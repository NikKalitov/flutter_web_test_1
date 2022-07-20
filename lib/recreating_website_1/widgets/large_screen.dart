import 'package:flutter/material.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          children: [
            Container(
              height: 600,
              color: Colors.blueGrey,
            ),
            Container(
              height: 600,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
