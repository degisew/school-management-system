//import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_school/services/sample_http.dart';

import '../widgets/mytextformfiled.dart';

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
  var _qlfndropdownvalue = 'BSc';
  var _genderdropdownvalue = 'Male';
  final _phonecontroller = TextEditingController();
  final _fnamecontroller = TextEditingController();
  final _mnamecontroller = TextEditingController();
  final _addresscontroller = TextEditingController();
  final _lnamecontroller = TextEditingController();
  final _agecontroller = TextEditingController();
  final _salarycontroller = TextEditingController();
  final _expcontroller = TextEditingController();

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var platform = (defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS);


    return Form(
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
                    'Teacher\'s Registration Form',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      width: 275,
                      child: TextFormfield(
                        ///hinttext: 'FirstName',
                        controller: _fnamecontroller,
                        label: 'FirstName',
                        errorstyle: errorstyle,
                        keyboardtype: TextInputType.text,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      width: 275,
                      child: TextFormfield(
                        ///hinttext: 'FirstName',
                        controller: _mnamecontroller,
                        label: 'MiddleName',
                        errorstyle: errorstyle,
                        keyboardtype: TextInputType.text,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      width: 275,
                      child: TextFormfield(
                        // hinttext: 'Grand Father\'s Name',
                        controller: _lnamecontroller,
                        label: 'LastName',
                        errorstyle: errorstyle,
                        keyboardtype: TextInputType.text,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      width: 275,
                      child: TextFormfield(
                        // hinttext: 'Age',
                        controller: _agecontroller,
                        label: 'Age',
                        errorstyle: errorstyle,
                        keyboardtype: TextInputType.number,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      width: 275,
                      child: TextFormfield(
                        // hinttext: 'Address',
                        controller: _addresscontroller,
                        label: 'Address',
                        errorstyle: errorstyle,
                        keyboardtype: TextInputType.text,
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.only(top: 20),
                        width: 275,
                        child: TextFormField(
                          controller: _phonecontroller,
                          keyboardType: TextInputType.number,
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
                            counterText:
                                '', //eliminates maxLength counter at the bottom
                            errorStyle: errorstyle(),
                            //  filled: true,//if true, it fills the tf with the given fill color.
                            // fillColor: Colors.white,//no need b/c the default backg is white now.
                            prefixText: '+251 ',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            label: const Text('Phone Number'),
                          ),
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20, bottom: 20),
                      width: 275,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'this field is required';
                          }

                          return null;
                        },
                        keyboardType: TextInputType.number,
                        controller: _expcontroller,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          label: const Text('Experience'),
                          errorStyle: errorstyle(),
                          suffixText: '.Yrs',
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20, bottom: 20),
                      width: 275,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'this field is required';
                          }

                          return null;
                        },
                        keyboardType: TextInputType.number,
                        controller: _salarycontroller,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          label: const Text('Salary'),
                          errorStyle: errorstyle(),
                          suffixText: '.ETB',
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
                            padding: EdgeInsets.only(right: 15, bottom: 15),
                            child: Text(
                              'Gender',
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
                                  _genderdropdownvalue = val as String;
                                },
                                value: _genderdropdownvalue,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 30, right: 15),
                            child: Text(
                              'Qualification',
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
                                iconEnabledColor: Colors.black87,
                                items: qlfndropdownitems.map((item) {
                                  return DropdownMenuItem(
                                      child: Text(item), value: item);
                                }).toList(),
                                onChanged: (val) {
                                  _qlfndropdownvalue = val as String;
                                },
                                value: _qlfndropdownvalue,
                              ),
                            ),
                          ),
                        ],
                      )
                    ]),
                Container(
                  width: 250,
                  margin: const EdgeInsets.only(top: 65),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                      onPressed: () {
                        var formvalidate = formkey.currentState!.validate();
                        if (formvalidate) {
                          addTeacher(
                              _fnamecontroller.text,
                              _mnamecontroller.text,
                              _lnamecontroller.text,
                              _agecontroller.text,
                              _genderdropdownvalue,
                              _qlfndropdownvalue,
                              _phonecontroller.text,
                              _addresscontroller.text,
                              _salarycontroller.text,
                              _expcontroller.text);
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
                                              _addresscontroller.clear();
                                              _phonecontroller.clear();
                                              _agecontroller.clear();
                                              _fnamecontroller.clear();
                                              _lnamecontroller.clear();
                                              _mnamecontroller.clear();
                                              _salarycontroller.clear();
                                              _expcontroller.clear();
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
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )),
                ),
              ]),
        )));
  }
}
