import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../models/studentGridView.dart';
import '../widgets/Adminmaindrawer.dart';

import '../widgets/mytextformfiled.dart';

class Adduser extends StatefulWidget {
  const Adduser({Key? key}) : super(key: key);

  @override
  State<Adduser> createState() => _AdduserState();
}

class _AdduserState extends State<Adduser> {
  List genderdropdownitems = [
    'Male',
    'Female',
  ];
  List gradedropdownitems = [
    'KG 1',
    'KG 2',
    'KG 3',
    'G-1',
    'G-2',
    'G-3',
    'G-4',
    'G-5',
    'G-6',
    'G-7',
    'G-8',
    'G-9',
    'G-10',
    'G-11',
    'G-12'
  ];
  final phonecontroller = TextEditingController();
  final fnamecontroller = TextEditingController();
  final mnamecontroller = TextEditingController();
  final addresscontroller = TextEditingController();
  final lnamecontroller = TextEditingController();
  final agecontroller = TextEditingController();
  final addressContoller = TextEditingController();
  final formkey = GlobalKey<FormState>();

  TextStyle errorstyle() {
    return const TextStyle(
        fontWeight: FontWeight.bold, backgroundColor: Colors.white);
  }

  @override
  Widget build(BuildContext context) {
    var gradedropdownvalue = 'KG 1';
    var genderdropdownvalue = 'Male';
    var platform = (defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS);

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
              Flexible(
                child: Card(
                  elevation: 30,
                  margin: const EdgeInsets.only(left: 150, right: 200),
                  child: Container(
                    //padding: const EdgeInsets.only(left: 150, right: 200),
                    //width: double.maxFinite,
                    height: 550,
                    child: TabBarView(
                      children: [
                        Form(
                            key: formkey,
                            child: SingleChildScrollView(
                                child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 20,
                                      child: Text(
                                        'Students\' Registration Form',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(top: 20),
                                          width: 275,
                                          child: TextFormfield(
                                            ///hinttext: 'FirstName',
                                            controller: fnamecontroller,
                                            label: 'FirstName',
                                            errorstyle: errorstyle,
                                            keyboardtype: TextInputType.text,
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(top: 20),
                                          width: 275,
                                          child: TextFormfield(
                                            ///hinttext: 'FirstName',
                                            controller: mnamecontroller,
                                            label: 'MiddleName',
                                            errorstyle: errorstyle,
                                            keyboardtype: TextInputType.text,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(top: 20),
                                          width: 275,
                                          child: TextFormfield(
                                            // hinttext: 'Grand Father\'s Name',
                                            controller: lnamecontroller,
                                            label: 'LastName',
                                            errorstyle: errorstyle,
                                            keyboardtype: TextInputType.text,
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(top: 20),
                                          width: 275,
                                          child: TextFormfield(
                                            // hinttext: 'Age',
                                            controller: agecontroller,
                                            label: 'Age',
                                            errorstyle: errorstyle,
                                            keyboardtype: TextInputType.number,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(
                                              top: 20, bottom: 20),
                                          width: 275,
                                          child: TextFormfield(
                                            // hinttext: 'Address',
                                            controller: addressContoller,
                                            label: 'Address',
                                            errorstyle: errorstyle,
                                            keyboardtype: TextInputType.text,
                                          ),
                                        ),
                                        Container(
                                            margin: const EdgeInsets.only(
                                                top: 20, bottom: 20),
                                            width: 275,
                                            child: TextFormField(
                                              controller: phonecontroller,
                                              keyboardType:
                                                  TextInputType.number,
                                              maxLength: 9,
                                              validator: (value) {
                                                if (value!.isEmpty) {
                                                  return 'this field is required';
                                                } else if (!value
                                                    .startsWith('9')) {
                                                  return 'must start with 9';
                                                } else if (value.length < 9) {
                                                  return 'It must be 10 digit';
                                                }

                                                return null;
                                              },
                                              decoration: InputDecoration(
                                                errorStyle: errorstyle(),
                                                filled: true,
                                                fillColor: Colors.white,
                                                prefixText: '+251 ',
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                                label:
                                                    const Text('Phone Number'),
                                              ),
                                            )),
                                      ],
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    right: 15, bottom: 15),
                                                child: Text(
                                                  'Gender',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15,
                                                      color: Colors.black),
                                                ),
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(
                                                    left: 6),
                                                width: 105,
                                                height: 45,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  //  borderRadius: BorderRadius.circular(15),
                                                  border: Border.all(
                                                    color: Colors.black,
                                                    // width: 2,
                                                  ),
                                                ),
                                                child:
                                                    DropdownButtonHideUnderline(
                                                  child:
                                                      DropdownButtonFormField(
                                                    validator: (value) {
                                                      if (value == null) {
                                                        return 'please select a value from the items.';
                                                      }
                                                      return null;
                                                    },
                                                    iconSize: 25,
                                                    iconEnabledColor:
                                                        Colors.black87,
                                                    items: genderdropdownitems
                                                        .map((item) {
                                                      return DropdownMenuItem(
                                                        //alignment: AlignmentDirectional.topStart,
                                                        child: Text(item),
                                                        value: item,
                                                      );
                                                    }).toList(),
                                                    onChanged: (val) {
                                                      genderdropdownvalue =
                                                          val as String;
                                                    },
                                                    value: genderdropdownvalue,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          //   children: [
                                          Row(
                                            //  mainAxisAlignment:
                                            //             MainAxisAlignment.center,
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 30, right: 15),
                                                child: Text(
                                                  'Grade',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15,
                                                      color: Colors.black),
                                                ),
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(
                                                    left: 6),
                                                width: 105,
                                                height: 45,

                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  //  borderRadius: BorderRadius.circular(15),
                                                  border: Border.all(
                                                    color: Colors.black,
                                                    //width: 2,
                                                  ),
                                                  // gradient: const LinearGradient(colors: [
                                                  //   Colors.white,
                                                  //   Colors.white,

                                                  // ]
                                                  // )
                                                ),
                                                //color: Colors.white,
                                                child:
                                                    DropdownButtonHideUnderline(
                                                  child:
                                                      DropdownButtonFormField(
                                                    validator: (value) {
                                                      value == null
                                                          ? 'please select your Grade'
                                                          : null;
                                                      return null;
                                                    },
                                                    hint: const Text(
                                                      'Select',
                                                      style: TextStyle(
                                                        fontSize: 18,
                                                      ),
                                                    ),
                                                    dropdownColor: Colors.white,
                                                    iconSize: 25,
                                                    iconEnabledColor:
                                                        Colors.black87,
                                                    items: gradedropdownitems
                                                        .map((item) {
                                                      return DropdownMenuItem(
                                                          child: Text(item),
                                                          value: item);
                                                    }).toList(),
                                                    onChanged: (val) {
                                                      gradedropdownvalue =
                                                          val as String;
                                                    },
                                                    value: gradedropdownvalue,
                                                  ),
                                                ),
                                                //   ),
                                                // ],
                                              ),
                                            ],
                                          )
                                        ]),
                                    Container(
                                      width: 250,
                                      margin: const EdgeInsets.only(top: 65),
                                      //padding: const EdgeInsets.only(top: 15),
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.green,
                                          ),
                                          onPressed: () {
                                            var formvalidate = formkey
                                                .currentState!
                                                .validate();
                                            if (formvalidate) {
                                              platform
                                                  ? ScaffoldMessenger.of(
                                                          context)
                                                      .showSnackBar(
                                                          const SnackBar(
                                                      backgroundColor:
                                                          Colors.green,
                                                      content: Text(
                                                        'Successfully registered!',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color: Colors.white,

                                                          fontFamily: 'Raleway',
                                                          fontSize: 25,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          // color: Colors.red,
                                                        ),
                                                      ),
                                                    ))
                                                  : showDialog(
                                                      context: context,
                                                      builder: (context) {
                                                        return AlertDialog(
                                                          title: Row(
                                                            children: const [
                                                              Icon(Icons
                                                                  .warning_amber),
                                                              Text(
                                                                'Success!',
                                                                style:
                                                                    TextStyle(
                                                                  fontFamily:
                                                                      'Raleway',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 30,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          content: Text(
                                                            'Your registration is Successful.',
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .titleSmall,
                                                          ),
                                                          actions: [
                                                            ElevatedButton(
                                                                style: ElevatedButton
                                                                    .styleFrom(
                                                                  primary: Colors
                                                                      .green,
                                                                ),
                                                                onPressed: () {
                                                                  Navigator.pop(
                                                                      context);
                                                                  addressContoller
                                                                      .clear();
                                                                  phonecontroller
                                                                      .clear();
                                                                  agecontroller
                                                                      .clear();
                                                                  fnamecontroller
                                                                      .clear();
                                                                  lnamecontroller
                                                                      .clear();
                                                                  mnamecontroller
                                                                      .clear();
                                                                },
                                                                child:
                                                                    const Text(
                                                                        'Ok'))
                                                          ],
                                                        );
                                                      });
                                            }
                                            //return;
                                          },
                                          child: const Text(
                                            'Register',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          )),
                                    ),
                                  ]),
                            ))),
                        Container(
                          child: const Center(
                            child: Text('Add T...'),
                          ),
                        ),
                        Container(
                          child: const Center(
                            child: Text('Add D...'),
                          ),
                        ),
                        Container(
                          child: const Center(
                            child: Text('Add P...'),
                          ),
                        ),
                        Container(
                          child: const Center(
                            child: Text('Add Sub...'),
                          ),
                        ),
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
