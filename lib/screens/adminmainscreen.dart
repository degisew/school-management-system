import 'package:flutter/material.dart';
import '../widgets/Adminmaindrawer.dart';
import 'package:fluent_ui/fluent_ui.dart';

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
      drawer: AdminMainDrawer(),
      body: Container(
        child: Center(child: Text('Admin Dashboard',
        style: Theme.of(context).textTheme.titleSmall,)),
      ),
    );
  }
}
