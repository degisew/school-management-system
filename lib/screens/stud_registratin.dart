import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../widgets/mytextformfiled.dart';

class StudRegistration extends StatefulWidget {
  const StudRegistration({Key? key}) : super(key: key);

  @override
  State<StudRegistration> createState() => _StudRegistrationState();
}

class _StudRegistrationState extends State<StudRegistration> {
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
  final _phonecontroller = TextEditingController();
  final _fnamecontroller = TextEditingController();
  final _mnamecontroller = TextEditingController();
  final _addresscontroller = TextEditingController();
  final _lnamecontroller = TextEditingController();
  final _agecontroller = TextEditingController();
  final _addressContoller = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  TextStyle errorstyle() {
    return const TextStyle(
        fontWeight: FontWeight.bold, backgroundColor: Colors.white);
  }

  @override
  Widget build(BuildContext context) {
    var gradedropdownvalue = 'KG 1';
    var genderdropdownvalue = 'Female';
    var platform = (defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS);
    return Form(
        key: _formkey,
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
                      margin: const EdgeInsets.only(top: 20, bottom: 20),
                      width: 275,
                      child: TextFormfield(
                        // hinttext: 'Address',
                        controller:_addresscontroller,
                        label: 'Address',
                        errorstyle: errorstyle,
                        keyboardtype: TextInputType.text,
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.only(top: 20, bottom: 20),
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
                            counterText: '', //eliminates maxLength counter at the bottom
                            errorStyle: errorstyle(),//error style is a method declaren in the top.
                           // filled: true,//if true, the textfield fills with given fill color.
                           // fillColor: Colors.white,//unused b/c, currently the default backg is white. 
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
                                  genderdropdownvalue = val as String;
                                },
                                value: genderdropdownvalue,
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
                              'Grade',
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
                        var formvalidate = _formkey.currentState!.validate();
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
                                              _addressContoller.clear();
                                              _phonecontroller.clear();
                                              _agecontroller.clear();
                                              _fnamecontroller.clear();
                                              _lnamecontroller.clear();
                                              _mnamecontroller.clear();
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
