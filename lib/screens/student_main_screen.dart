import 'package:flutter/material.dart';
import 'package:my_school/models/student_grid_view.dart';
import 'package:my_school/screens/compalin_screen.dart';
import '../widgets/stud_main_drawer.dart';

class Studmainscreen extends StatelessWidget {
  Studmainscreen({Key? key}) : super(key: key);
  final bool wilpop = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => wilpop,
      child: Scaffold(
        appBar: AppBar(
          //automaticallyImplyLeading: false,
          title: Center(
            child: Text(
              'welcome Student',
              style: Theme.of(context).appBarTheme.titleTextStyle,
            ),
          ),
        ),
        endDrawer: const Studmaindrawer(),
        
      )
    );
  }
}
