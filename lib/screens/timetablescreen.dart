import 'package:flutter/material.dart';
import '../widgets/studmaindrawer.dart';

class TimeTableScreen extends StatelessWidget {
  const TimeTableScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('must get a title'),
      ),
      drawer: const Studmaindrawer(),
      body: const Center(
        child: Text('we will do it'),
      ),
    );
  }
}
