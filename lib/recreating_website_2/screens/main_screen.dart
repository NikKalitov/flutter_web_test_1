import 'package:flutter/material.dart';
import '../widgets/side_menu.dart';
import '../widgets/app_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.path}) : super(key: key);

  final String path;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar('Main screen'),
      body: Center(
        child: Stack(
          children: [
            Container(
              color: Colors.grey[500],
            ),
            Positioned(
              top: 0,
              left: 0,
              child: CustomSideMenu(path: path),
            ),
          ],
        ),
      ),
    );
  }
}
