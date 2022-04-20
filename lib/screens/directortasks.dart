import 'package:flutter/material.dart';
import 'package:my_school/widgets/Adminmaindrawer.dart';
import 'package:my_school/widgets/directormaindrawer.dart';
import 'package:my_school/widgets/exit_changepinConfirmation.dart';
import 'package:my_school/widgets/studmaindrawer.dart';
import 'package:my_school/widgets/teachmaindrawer.dart';

class Directortasks extends StatefulWidget {
  const Directortasks({Key? key}) : super(key: key);

  @override
  State<Directortasks> createState() => _DirectortasksState();
}

class _DirectortasksState extends State<Directortasks> {
// Widget userlogindetector(){
//   if(logeduser==student{
//     return Studmaindrawer();
//   }else if(logeduser==parent){
//     return ParentMainDrawer();
//   }else if(logeduser==admin){
//     return AdminMainDrawer();
//   }else if(logeduser==teacher){
//     return teacherMainDrawer();
//   }else{
//     return DirectorMainDrawer();
//   }
// }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(),
        // endDrawer: userlogindetector,
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
                              quarterTurns: 3, child: Text('View Report')),
                          RotatedBox(
                            quarterTurns: 3,
                            child: Text('Add Post'),
                          ),
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
                          child: Text('view report...'),
                        ),
                      ),
                      Container(
                        child: const Center(
                          child: Text('add post..'),
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
