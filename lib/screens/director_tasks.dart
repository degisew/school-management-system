import 'package:flutter/material.dart';
import 'package:my_school/widgets/add_post.dart';
import 'package:my_school/widgets/director_main_drawer.dart';

class Directortasks extends StatefulWidget {
  const Directortasks({Key? key}) : super(key: key);

  @override
  State<Directortasks> createState() => _DirectortasksState();
}

class _DirectortasksState extends State<Directortasks> {
 
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(),
        drawer: const Directormaindrawer(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 50),
                  child: Icon(
                    Icons.task,
                    size: 40,
                    color: Color.fromARGB(255, 68, 138, 255),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 50),
                  child: Text(
                    'Tasks',
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
                            fontFamily: 'RobotoMono',
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                        tabs: [
                          RotatedBox(
                              quarterTurns: 3, child: Text('View Report')),
                          RotatedBox(
                            quarterTurns: 3,
                            child: Text('Add Post'),
                          ),
                        ]),
                  ),
                ),
               const Flexible(
                    child: Card(
                  elevation: 30,
                  margin:  EdgeInsets.only(left: 150, right: 200),
                  child: SizedBox(
                    height: 500,
                    child: TabBarView(children: [
                       Center(
                        child: Text('view report...'),
                      ),
                     AddPost('Director'),
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
