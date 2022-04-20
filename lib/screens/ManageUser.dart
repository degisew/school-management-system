import 'package:flutter/material.dart';

import '../widgets/Adminmaindrawer.dart';

class ManageUser extends StatelessWidget {
  const ManageUser({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(),
        drawer: AdminMainDrawer(),
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
                              quarterTurns: 3, child: Text('Manage Student')),
                          RotatedBox(
                            quarterTurns: 3,
                            child: Text('Manage Teacher'),
                          ),
                          RotatedBox(
                              quarterTurns: 3, child: Text('Manage Director')),
                          RotatedBox(
                              quarterTurns: 3, child: Text('Manage Parent')),
                          RotatedBox(
                              quarterTurns: 3, child: Text('Manage Subject')),
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
                          child: Text('Manage stu...'),
                        ),
                      ),
                      Container(
                        child: const Center(
                          child: Text('Manage T...'),
                        ),
                      ),
                      Container(
                        child: const Center(
                          child: Text('Manage D...'),
                        ),
                      ),
                      Container(
                        child: const Center(
                          child: Text('Manage P...'),
                        ),
                      ),
                      Container(
                        child: const Center(
                          child: Text('Manage Sub...'),
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