import 'package:flutter/material.dart';
import 'package:my_school/screens/addAttendance.dart';
import 'package:my_school/widgets/studmaindrawer.dart';
import 'package:my_school/widgets/teachmaindrawer.dart';

class Teachactivities extends StatefulWidget {
  const Teachactivities({Key? key}) : super(key: key);

  @override
  State<Teachactivities> createState() => _TeachactivitiesState();
}

class _TeachactivitiesState extends State<Teachactivities> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(),
        drawer: const Teachmaindrawer(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 50),
                  child: Icon(
                    Icons.local_activity,
                    size: 40,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 50),
                  child: Text(
                    'Activities',
                    style: TextStyle(
                      fontFamily: 'RobotoMono',
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RotatedBox(
                  quarterTurns: 1,
                  child: Container(
                    padding: const EdgeInsets.only(left: 20),
                    // decoration: const BoxDecoration(
                    //     gradient: LinearGradient(colors: [
                    //   Colors.amber,
                    //   Colors.amber,
                    // ])),
                    width: 300,
                    height: 250,
                    child: const TabBar(
                      indicatorPadding:  EdgeInsets.all(10),
                      indicatorWeight: 13,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorColor: Colors.black,
                        unselectedLabelColor: Colors.black,
                        unselectedLabelStyle: TextStyle(
                          backgroundColor: Colors.white,
                        ),
                        padding: EdgeInsets.only(top: 0),
                        isScrollable: true,
                        labelColor: Colors.white,
                        labelStyle: TextStyle(
                            backgroundColor: Colors.green,
                            //color: Colors.black,
                            fontFamily: 'RobotoMono',
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                        tabs: [
                          RotatedBox(
                              quarterTurns: 3, child: Text('Add Attendance')),
                          RotatedBox(
                            quarterTurns: 3,
                            child: Text('View Notification'),
                          ),
                          RotatedBox(
                              quarterTurns: 3, child: Text('Submit Grade')),
                          RotatedBox(
                              quarterTurns: 3,
                              child: Text('Post Notification')),
                        ]),
                  ),
                ),
                Flexible(
                    child: Card(
                  elevation: 30,
                  margin: const EdgeInsets.only(left: 150, right: 200),
                  child: Container(
                    //padding: const EdgeInsets.only(left: 150, right: 200),
                    //width: double.maxFinite,
                    height: 500,
                    child: TabBarView(children: [
                      Container(
                        child: const Center(
                          child: Text('Add At...'),
                        ),
                      ),
                      Container(
                        child: const Center(
                          child: Text('Sub G...'),
                        ),
                      ),
                      Container(
                        child: const Center(
                          child: Text('Post N...'),
                        ),
                      ),
                      Container(
                        child: const Center(
                          child: Text('View N...'),
                        ),
                      ),
                    ]),
                  ),
                ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
