import 'package:flutter/material.dart';

class BigScreen extends StatelessWidget {
  const BigScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          width: double.infinity,
          height: 1200,
          color: Colors.blue[900],
        ),
      ),
    );
  }
}
