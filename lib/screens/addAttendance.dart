import 'package:flutter/material.dart';
import 'package:my_school/screens/SettingsScreen.dart';

import '../widgets/teachmaindrawer.dart';

class Addattendance extends StatefulWidget {
  const Addattendance({Key? key}) : super(key: key);

  @override
  State<Addattendance> createState() => _AddattendanceState();
}

class _AddattendanceState extends State<Addattendance> {
  List dropdownvalues = ['7th A', '8th B'];
  var datepickercontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    String dropdownitemvalues = '${dropdownvalues[0]}';
    return Scaffold(
      appBar: AppBar(),
      endDrawer: const Teachmaindrawer(),
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
                const Divider(),
                InkWell(
                  focusColor: const Color.fromARGB(255, 99, 152, 243),
                  child: Row(
                    children: const [
                      Icon(Icons.person),
                      Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            'Add Attendance',
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
                          child: Text('Post Grade')),
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
                            'Post Notification',
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
          Padding(
            padding: const EdgeInsets.only(left: 100, top: 80),
            // child: Container(
            //   width: 950,
            //   height: 550,
            //   decoration: const BoxDecoration(
            //       gradient: LinearGradient(colors: [
            //     Color.fromARGB(255, 214, 204, 204),
            //     Color.fromARGB(255, 246, 241, 241),
            //   ])),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 250,
                      height: 30,
                      child: DropdownButtonFormField(
                       onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SettingsScreen())),
                        items: dropdownvalues.map((item) {
                          return DropdownMenuItem(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SettingsScreen())),
                            child: Text(item),
                            value: item,
                          );
                        }).toList(),
                        onChanged: (val) {
                          dropdownitemvalues = val as String;
                        },
                        value: dropdownitemvalues,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 50),
                      height: 30,
                      width: 90,
                      child: TextFormField(
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.calendar_today),
                            onPressed: () {
                              showDatePicker(
                                  context: context,
                                  initialDate: DateTime(2008),
                                  firstDate: DateTime(2004),
                                  lastDate: DateTime.now());
                            },
                          ),
                        ),
                        onTap: () {},
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
