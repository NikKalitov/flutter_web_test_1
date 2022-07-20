import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';
import '../widgets/side_menu.dart';

class PartnershipScreen extends StatelessWidget {
  const PartnershipScreen({Key? key, required this.path}) : super(key: key);

  final String path;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar('Partnership screen'),
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
