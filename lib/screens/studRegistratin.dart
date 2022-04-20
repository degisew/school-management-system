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

  final phonecontroller = TextEditingController();
  final fnamecontroller = TextEditingController();
  final mnamecontroller = TextEditingController();
  final addresscontroller = TextEditingController();
  final lnamecontroller = TextEditingController();
  final agecontroller = TextEditingController();
  var addressContoller = TextEditingController();
  final formkey = GlobalKey<FormState>();

  TextStyle errorstyle() {
    return const TextStyle(
        fontWeight: FontWeight.bold, backgroundColor: Colors.white);
  }

  Function phoneVaidator() {
    return (value) {
      if (value!.isEmpty) {
        return 'this field is required';
      } else if (!value.startsWith('9')) {
        return 'must start with 9';
      } else if (value.length < 9) {
        return 'It must be 10 digit';
      }

      return null;
    };
  }

  @override
  Widget build(BuildContext context) {
    var gradedropdownvalue = 'KG 1';
    var genderdropdownvalue = 'Male';
    var platform = (defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS);
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'images/background.png',
          ),
        ),
      ),
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
                            child: TextFormfield(
                              ///hinttext: 'FirstName',
                              controller: fnamecontroller,
                              label: 'FirstName',
                              errorstyle: errorstyle,
                              keyboardtype: TextInputType.text,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: TextFormfield(
                              //hinttext: 'Father\'s Name',
                              controller: mnamecontroller,
                              label: 'Middle Name',
                              errorstyle: errorstyle,
                              keyboardtype: TextInputType.text,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: TextFormfield(
                              // hinttext: 'Grand Father\'s Name',
                              controller: lnamecontroller,
                              label: 'Last Name',
                              errorstyle: errorstyle,
                              keyboardtype: TextInputType.text,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: TextFormfield(
                              // hinttext: 'Age',
                              controller: agecontroller,
                              label: 'Age',
                              errorstyle: errorstyle,
                              keyboardtype: TextInputType.number,
                            ),
                          ),
                          Row(children: [
                            Row(children: [
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
                            ]),
                            const SizedBox(
                              height: 10,
                              width: 40,
                            ),
                            // Row(
                            //   //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //   children: [
                            const Padding(
                                padding: EdgeInsets.only(right: 17, bottom: 15),
                                child: Text(
                                  'Grade',
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
                              //   ),
                              // ],
                            ),
                          ]),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15, top: 15),
                            child: TextFormField(
                              controller: phonecontroller,
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
