// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
// import '../widgets/main_widget.dart';
import '../widgets/row_column_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size recalculateSize() {
      Size screenSize = MediaQuery.of(context).size;
      print('screenSize: $screenSize');
      return screenSize;
    }

    return Scaffold(
      drawer: Row(),
      body: RowToColumnWidget(screenSize: recalculateSize()),
    );
  }
}
