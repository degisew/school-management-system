import 'package:flutter/material.dart';
import '../screens/director_registration.dart';
import '../screens/parent_registration.dart';
import '../screens/stud_registratin.dart';
import '../screens/subject_registration.dart';
import '../screens/teach_registration.dart';
import '../widgets/admin_main_drawer.dart';

class Adduser extends StatefulWidget {
  const Adduser({Key? key}) : super(key: key);

  @override
  State<Adduser> createState() => _AdduserState();
}

class _AdduserState extends State<Adduser> {
  // List genderdropdownitems = [
  //   'Male',
  //   'Female',
  // ];
  // List gradedropdownitems = [
  //   'KG 1',
  //   'KG 2',
  //   'KG 3',
  //   'G-1',
  //   'G-2',
  //   'G-3',
  //   'G-4',
  //   'G-5',
  //   'G-6',
  //   'G-7',
  //   'G-8',
  //   'G-9',
  //   'G-10',
  //   'G-11',
  //   'G-12'
  // ];
  // final phonecontroller = TextEditingController();
  // final fnamecontroller = TextEditingController();
  // final mnamecontroller = TextEditingController();
  // final addresscontroller = TextEditingController();
  // final lnamecontroller = TextEditingController();
  // final agecontroller = TextEditingController();
  // final addressContoller = TextEditingController();
  // final formkey = GlobalKey<FormState>();

  // TextStyle errorstyle() {
  //   return const TextStyle(
  //       fontWeight: FontWeight.bold, backgroundColor: Colors.white);
  // }

  @override
  Widget build(BuildContext context) {
    // var gradedropdownvalue = 'KG 1';
    // var genderdropdownvalue = 'Male';
    // var platform = (defaultTargetPlatform == TargetPlatform.android ||
    //     defaultTargetPlatform == TargetPlatform.iOS);

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(),
        drawer:const AdminMainDrawer(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 50),
                  child: Icon(
                    Icons.person_add,
                    size: 40,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 50),
                  child: Text(
                    'Add User',
                    style: TextStyle(
                      fontFamily: 'RobotoMono',
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
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
                        RotatedBox(quarterTurns: 3, child: Text('Add Student')),
                        RotatedBox(
                          quarterTurns: 3,
                          child: Text('Add Teacher'),
                        ),
                        RotatedBox(
                            quarterTurns: 3, child: Text('Add Director')),
                        RotatedBox(quarterTurns: 3, child: Text('Add Parent')),
                        RotatedBox(quarterTurns: 3, child: Text('Add Subject')),
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
                    height: 550,
                    child: TabBarView(
                      children: [
                         StudRegistration(),
                         TeachRegistration(),
                         DirectorRegistration(),
                        ParentRegistration(),
                        SubjectRegistration(),
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
