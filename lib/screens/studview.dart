import 'package:flutter/material.dart';
import 'package:my_school/widgets/studmaindrawer.dart';

class StudView extends StatefulWidget {
  const StudView({ Key? key }) : super(key: key);

  @override
  State<StudView> createState() => _StudViewState();
}

class _StudViewState extends State<StudView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
       appBar: AppBar(),
       endDrawer:const Studmaindrawer(),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.settings,
                      size: 40,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
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
                const Divider(),
                InkWell(
                  focusColor: const Color.fromARGB(255, 99, 152, 243),
                  child: Row(
                    children: const [
                      Icon(Icons.person),
                      Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            'Attendance',
                            style: TextStyle(),
                          )),
                    ],
                  ),
                  onTap: () {
                    //navigate to profile detail screen
                  },
                ),
                const Divider(),
                InkWell(
                  focusColor: const Color.fromARGB(255, 99, 152, 243),
                  autofocus: true,
                  child: Row(
                    children: const [
                      Icon(Icons.change_circle),
                      Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text('Marks')),
                    ],
                  ),
                  onTap: () {
                    //navigate to profile detail screen
                  },
                ),
                InkWell(
                  focusColor: const Color.fromARGB(255, 99, 152, 243),
                  child: Row(
                    children: const [
                      Icon(Icons.person),
                      Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            'Time Table',
                            style: TextStyle(),
                          )),
                    ],
                  ),
                  onTap: () {
                    //navigate to profile detail screen
                  },
                ),
                const Divider(),
                // InkWell(
                //   child: Row(
                //     children: const [
                //       Icon(Icons.logout),
                //       Padding(
                //           padding: EdgeInsets.only(left: 15),
                //           child: Text('Logout')),
                //     ],
                //   ),
                //   onTap: () {
                //     //navigate to profile detail screen
                //   },
                // ),
              ],
            ),
          ),
          Card(
            margin: const EdgeInsets.only(top: 70, left: 200),
            elevation: 3,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Container(
              width: 750,
              height: 450,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text('profile status goes here.'),
            ),
          ),
        ],
      ),
    );
  }
}