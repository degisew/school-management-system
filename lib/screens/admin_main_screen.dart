import 'package:flutter/material.dart';
import '../widgets/admin_main_drawer.dart';
//import 'package:fluent_ui/fluent_ui.dart';

class AdminMainScreen extends StatelessWidget {
  const AdminMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'welcome admin',
          // textAlign: TextAlign.center,
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
      drawer:const AdminMainDrawer(),
      body: Center(child: Text('Admin Dashboard',
      style: Theme.of(context).textTheme.titleSmall,)),
    );
  }
}
