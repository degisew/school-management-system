//import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TeachRegistration extends StatefulWidget {
  const TeachRegistration({Key? key}) : super(key: key);

  @override
  State<TeachRegistration> createState() => _TeachRegistrationState();
}

class _TeachRegistrationState extends State<TeachRegistration> {
  List genderdropdownitems = [
    'Male',
    'Female',
  ];
  List qlfndropdownitems = ['MSc', 'BSc', 'MA', 'BA', 'PhD'];

  TextStyle errorstyle() {
    return const TextStyle(
        fontWeight: FontWeight.bold, backgroundColor: Colors.white);
  }

  final phonecontroller = TextEditingController();
  final fnamecontroller = TextEditingController();
  final mnamecontroller = TextEditingController();
  final addresscontroller = TextEditingController();
  final lnamecontroller = TextEditingController();
  final agecontroller = TextEditingController();
  var addressContoller = TextEditingController();

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var platform = !(defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS);
    var qlfndropdownvalue = 'BSc';
    var genderdropdownvalue = 'Male';
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage('images/background.png'))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
                width: 550,
                height: 600,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 7, 77, 198),
                      Color.fromARGB(255, 7, 77, 198),
                    ],
                  ),
                ),
                child: Form(
                  key: formkey,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                            child: Text(
                              'Students\' Registration Form',
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15, top: 20),
                            child: TextFormField(
                              // autovalidateMode: AutovalidateMode.always,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'this field is required';
                                }

                                return null;
                              },
                              decoration: InputDecoration(
                                errorStyle: errorstyle(),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                label: const Text('FirstName'),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'this field is required';
                                }

                                return null;
                              },
                              decoration: InputDecoration(
                                errorStyle: errorstyle(),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                label: const Text('Father\'s Name'),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'this field is required';
                                }

                                return null;
                              },
                              decoration: InputDecoration(
                                errorStyle: errorstyle(),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                label: const Text('Grand father\'s Name'),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'this field is required';
                                }

                                return null;
                              },
                              decoration: InputDecoration(
                                errorStyle: errorstyle(),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                label: const Text('Age'),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'this field is required';
                                }

                                return null;
                              },
                              decoration: InputDecoration(
                                errorStyle: errorstyle(),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                label: const Text('Field of Study'),
                              ),
                            ),
                          ),
                          Row(children: [
                            // Row(children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 10, bottom: 15),
                              child: Text(
                                'Gender',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.white),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 6),
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
                              child: DropdownButtonHideUnderline(
                                child: DropdownButtonFormField(
                                  validator: (value) {
                                    if (value == null) {
                                      return 'please select a value from the items.';
                                    }
                                    return null;
                                  },
                                  iconSize: 25,
                                  iconEnabledColor: Colors.black87,
                                  items: genderdropdownitems.map((item) {
                                    return DropdownMenuItem(
                                      //alignment: AlignmentDirectional.topStart,
                                      child: Text(item),
                                      value: item,
                                    );
                                  }).toList(),
                                  onChanged: (val) {
                                    genderdropdownvalue = val as String;
                                  },
                                  value: genderdropdownvalue,
                                ),
                              ),
                            ),
                            // ]),
                            const SizedBox(
                              height: 10,
                              width: 10,
                            ),
                            // Row(
                            //   //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //   children: [
                            const Padding(
                                padding: EdgeInsets.only(right: 9, bottom: 15),
                                child: Text(
                                  'Qualification',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.white),
                                )),
                            Container(
                              padding: const EdgeInsets.only(left: 6),
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
                              child: DropdownButtonHideUnderline(
                                child: DropdownButtonFormField(
                                  validator: (value) {
                                    value == null
                                        ? 'please select your Grade'
                                        : null;
                                    return null;
                                  },
                                  dropdownColor: Colors.white,
                                  iconSize: 25,
                                  iconEnabledColor: Colors.black87,
                                  items: qlfndropdownitems.map((item) {
                                    return DropdownMenuItem(
                                        child: Text(item), value: item);
                                  }).toList(),
                                  onChanged: (val) {
                                    qlfndropdownvalue = val as String;
                                  },
                                  value: qlfndropdownvalue,
                                ),
                              ),
                              //   ),
                              // ],
                            ),
                          ]),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15, top: 15),
                            child: TextFormField(
                              // controller: phonecontroller,
                              keyboardType: TextInputType.number,
                              //initialValue: '9',

                              maxLength: 9,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'this field is required';
                                } else if (!value.startsWith('9')) {
                                  return 'must start with 9';
                                } else if (value.length < 9) {
                                  return 'It must be 10 digit';
                                }

                                return null;
                              },
                              decoration: InputDecoration(
                                counter: const Offstage(),
                                counterText: "",
                                errorStyle: errorstyle(),
                                filled: true,
                                fillColor: Colors.white,
                                prefixText: '+251 ',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                label: const Text('Phone Number'),
                                // prefix: Row(
                                //   children: const [
                                //     Icon(Icons.flag_circle),
                                //     Text('+251'),
                                //   ],
                                // ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'this field is required';
                                }

                                return null;
                              },
                              decoration: InputDecoration(
                                errorStyle: errorstyle(),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                label: const Text('Address'),
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.only(top: 15),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                              ),
                              onPressed: () {
                                var formvalidate =
                                    formkey.currentState!.validate();
                                if (formvalidate) {
                                  platform
                                      ? ScaffoldMessenger.of(context)
                                          .showSnackBar(const SnackBar(
                                          backgroundColor: Colors.green,
                                          content: Text(
                                            'Successfully registered!',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,

                                              fontFamily: 'Raleway',
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              // color: Colors.red,
                                            ),
                                          ),
                                        ))
                                      : showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              backgroundColor: Colors.green,
                                              title: Row(
                                                children: const [
                                                  Icon(
                                                    Icons.warning_amber,
                                                    size: 50,
                                                    color: Colors.yellowAccent,
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 10),
                                                    child: Text(
                                                      'Success!',
                                                      style: TextStyle(
                                                        fontFamily: 'Raleway',
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 30,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              content: Text(
                                                'Your registration is Successful.',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleSmall,
                                              ),
                                              actions: [
                                                ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      primary: Colors.green,
                                                    ),
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                      addressContoller.clear();
                                                      phonecontroller.clear();
                                                      agecontroller.clear();
                                                      fnamecontroller.clear();
                                                      lnamecontroller.clear();
                                                      mnamecontroller.clear();
                                                    },
                                                    child: const Text('Ok'))
                                              ],
                                            );
                                          });
                                }
                                //return;
                              },
                              child: const Text('Register',
                                  style: TextStyle(
                                    color: Colors.black,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
