import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../services/sample_http.dart';

class SubjectRegistration extends StatefulWidget {
  const SubjectRegistration({Key? key}) : super(key: key);

  @override
  State<SubjectRegistration> createState() => _SubjectregistrationState();
}

class _SubjectregistrationState extends State<SubjectRegistration> {
  List gradedropdownitems = [
    'KG 1',
    'KG 2',
    'KG 3',
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

  List crHrdropdownitems = [
    '1 CrHr',
    '2 CrHr',
    '3 CrHr',
    '4 CrHr',
    '5 CrHr',
    '6 CrHr',
    '7 CrHr',
    '10 CrHr',
  ];

  final snamecontroller = TextEditingController();
  final scodecontroller = TextEditingController();
  final instructorcontroller = TextEditingController();
  var gradedropdownvalue = 'KG 1';
  var crhrdropdownvalue = '3 CrHr';

  var formkey = GlobalKey<FormState>();
  TextStyle errorstyle() {
    //a function that returns textStyle widget.
    return const TextStyle(
        fontWeight: FontWeight.bold, backgroundColor: Colors.white);
  }

  @override
  Widget build(BuildContext context) {
    //tells runApp to draw a widget on the screen.
    var platform = (defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS);

    return Form(
      key: formkey,
      child: SingleChildScrollView(
        //to make the form scrollable
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(
                // gives white space.
                height: 20,
                child: Text(
                  'Subject Registration Form',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 20),
                    width: 275,
                    child: TextFormField(
                      controller: snamecontroller,
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
                        label: const Text('SubjectName'),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 20),
                    width: 275,
                    child: TextFormField(
                      controller: scodecontroller,
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
                        label: const Text('SubjectCode'),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.only(top: 20, bottom: 20, right: 10),
                        child: Text(
                          'Target Grade',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.black),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 6),
                        width: 105,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                          ),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButtonFormField(
                            validator: (value) {
                              value == null ? 'please select your Grade' : null;
                              return null;
                            },
                            dropdownColor: Colors.white,
                            iconSize: 25,
                            iconEnabledColor: Colors.black87,
                            items: gradedropdownitems.map((item) {
                              return DropdownMenuItem(
                                  child: Text(item), value: item);
                            }).toList(),
                            onChanged: (val) {
                              gradedropdownvalue = val as String;
                            },
                            value: gradedropdownvalue,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Padding(
                          padding: EdgeInsets.only(left: 30, right: 10),
                          //width: 275,
                          child: Text(
                            'CreditHour',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                          )),
                      Container(
                        padding: const EdgeInsets.only(left: 6),
                        width: 105,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                          ),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButtonFormField(
                            validator: (value) {
                              value == null ? 'please select your CrHr' : null;
                              return null;
                            },
                            dropdownColor: Colors.white,
                            iconSize: 25,
                            iconEnabledColor: Colors.black87,
                            items: crHrdropdownitems.map((item) {
                              return DropdownMenuItem(
                                  child: Text(item), value: item);
                            }).toList(),
                            onChanged: (val) {
                              crhrdropdownvalue = val as String;
                            },
                            value: crhrdropdownvalue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                // width: double.infinity,
                padding: const EdgeInsets.only(top: 15),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                    ),
                    onPressed: () {
                      var formvalidate = formkey.currentState!.validate();
                      if (formvalidate) {
                        addSubject(
                          snamecontroller.text,
                          scodecontroller.text,
                          gradedropdownvalue, 
                          crhrdropdownvalue
                          );
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
                                    title: Row(
                                      children: const [
                                        Icon(Icons.warning_amber),
                                        Text(
                                          'Success!',
                                          style: TextStyle(
                                            fontFamily: 'Raleway',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30,
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
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.green,
                                          ),
                                          onPressed: () {
                                            Navigator.pop(context);
                                            snamecontroller.clear();
                                            scodecontroller.clear();
                                            instructorcontroller.clear();
                                          },
                                          child: const Text('Ok'))
                                    ],
                                  );
                                });
                      }
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
