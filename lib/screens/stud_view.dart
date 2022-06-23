import 'package:flutter/material.dart';
import '../widgets/stud_main_drawer.dart';

class StudView extends StatefulWidget {
  const StudView({Key? key}) : super(key: key);

  @override
  State<StudView> createState() => _StudViewState();
}

class _StudViewState extends State<StudView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(),
        drawer: const Studmaindrawer(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 50),
                  child: Icon(
                    Icons.remove_red_eye,
                    size: 40,
                    color: Color.fromARGB(255, 68, 138, 255),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 50),
                  child: Text(
                    'View',
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
                //contains all tabs horiontally
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RotatedBox(
                    //here to rotate the tabs
                    quarterTurns: 1, //describes degree of rotation 1=90 degree
                    child: Container(
                      padding: const EdgeInsets.only(left: 20),
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
                              quarterTurns: 3,
                              child: Text('Marks'),
                            ),
                            RotatedBox(
                              quarterTurns: 3,
                              child: Text('Time Table'),
                            ),
                            RotatedBox(
                                quarterTurns: 3, child: Text('Notifications')),
                          ]),
                    ),
                  ),
                  const Flexible(
                    child: Card(
                      elevation: 30,
                      margin: EdgeInsets.only(left: 150, right: 200),
                      child: SizedBox(
                        //padding: const EdgeInsets.only(left: 150, right: 200),
                        //width: double.maxFinite,
                        height: 550,
                        child: TabBarView(
                          children: [
                            Text('tab1'),
                            Text('tab2'),
                            Text('tab3'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}
