import 'package:flutter/material.dart';
import 'package:my_school/widgets/teach_main_drawer.dart';

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
                    color: Color.fromARGB(255, 68, 138, 255),
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
                    child: SizedBox(
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
                const Flexible(
                  child: Card(
                    elevation: 20,
                    margin: EdgeInsets.only(left: 150, right: 200),
                    child: SizedBox(
                      // padding: const EdgeInsets.only(left: 160, right: 150),
                      //alignment: Alignment.center,
                      height: 500,
                      // width: 780,
                      // width: double.maxFinite,
                      child: TabBarView(
                        children: [
                          Center(
                            child: Text('Profile'),
                          ),
                          Center(
                            child: Text('change pin'),
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
