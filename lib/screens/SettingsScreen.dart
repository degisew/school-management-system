import 'package:flutter/material.dart';
import 'package:my_school/widgets/Adminmaindrawer.dart';
import 'package:my_school/widgets/exit_changepinConfirmation.dart';
import 'package:my_school/widgets/studmaindrawer.dart';
import 'package:my_school/widgets/teachmaindrawer.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
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
        drawer: const Teachmaindrawer(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 15, top: 50),
                  child: Icon(
                    Icons.settings,
                    size: 40,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, top: 50),
                  child: Text(
                    'Settings',
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
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: Container(
                      // decoration: const BoxDecoration(
                      //     gradient: LinearGradient(colors: [
                      //   Colors.amber,
                      //   Colors.amber,
                      // ])),
                      width: 130,
                      height: 150,
                      child: Column(
                        children: const [
                          TabBar(
                            isScrollable: true,
                              labelPadding:
                                  EdgeInsets.only(left: 20, right: 20),
                              labelColor: Colors.black,
                              labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'RobotoMono',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                              tabs: [
                                RotatedBox(
                                  quarterTurns: 3,
                                  child: Text(
                                    'Profile',
                                  ),
                                ),
                                RotatedBox(
                                  quarterTurns: 3,
                                  child: Text(
                                    'Change pin',
                                  ),
                                ),
                              ]),
                        ],
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Card(
                    elevation: 20,
                    margin: const EdgeInsets.only(left: 150, right: 200),
                    child: Container(
                      // padding: const EdgeInsets.only(left: 160, right: 150),
                      //alignment: Alignment.center,
                      height: 500,
                      // width: 780,
                      // width: double.maxFinite,
                      child: TabBarView(
                        children: [
                          Container(
                            child: const Center(
                              child: Text('Profile'),
                            ),
                          ),
                          Container(
                            child: const Center(
                              child: Text('change pin'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
