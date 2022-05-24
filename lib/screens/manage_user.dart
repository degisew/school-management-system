import 'package:flutter/material.dart';

import '../widgets/admin_main_drawer.dart';

class ManageUser extends StatelessWidget {
  const ManageUser({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(),
        drawer: const AdminMainDrawer(),
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
                    'Manage',
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
                        indicatorPadding: EdgeInsets.all(10),
                        indicatorWeight: 13,
                        indicatorSize: TabBarIndicatorSize.label,
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
                              quarterTurns: 3, child: Text('Manage Students')),
                          RotatedBox(
                            quarterTurns: 3,
                            child: Text('Manage Teachers'),
                          ),
                          RotatedBox(
                              quarterTurns: 3, child: Text('Manage Director')),
                          RotatedBox(
                              quarterTurns: 3, child: Text('Manage Parents')),
                          RotatedBox(
                              quarterTurns: 3, child: Text('Manage Subjects')),
                        ]),
                  ),
                ),
                const Flexible(
                    child: Card(
                  elevation: 30,
                  margin:  EdgeInsets.only(left: 150, right: 200),
                  child: SizedBox(
                    //padding: const EdgeInsets.only(left: 150, right: 200),
                    //width: double.maxFinite,
                    height: 500,
                    child: TabBarView(children: [
                       Center(
                        child: Text('Manage stu...'),
                      ),
                       Center(
                        child: Text('Manage T...'),
                      ),
                       Center(
                        child: Text('Manage D...'),
                      ),
                       Center(
                        child: Text('Manage P...'),
                      ),
                       Center(
                        child: Text('Manage Sub...'),
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