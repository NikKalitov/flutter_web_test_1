// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import './widgets/top_nav_bar.dart';
import './helpers/responsiveness.dart';
import './widgets/large_screen.dart';
import './widgets/big_screen.dart';
import './widgets/medium_screen.dart';
import './widgets/small_screen.dart';
import './widgets/side_menu.dart';

class WebLayOut extends StatelessWidget {
  WebLayOut({Key? key}) : super(key: key);

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: TopNavBar(context, scaffoldKey),
      drawer: SideMenu(),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        bigScreen: BigScreen(),
        mediumScreen: MediumScreen(),
        smallScreen: SmallScreen(),
        sideMenu: SideMenu(),
      ),
    );
  }
}
