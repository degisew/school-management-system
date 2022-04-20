import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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

  List CrHrdropdownitems = [
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

  var formkey = GlobalKey<FormState>();
  TextStyle errorstyle() {
    return const TextStyle(
        fontWeight: FontWeight.bold, backgroundColor: Colors.white);
  }

  @override
  Widget build(BuildContext context) {
    var platform = (defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS);
    var gradedropdownvalue = 'KG 1';
    var crhrdropdownvalue = '3 CrHr';
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('images/background.png'),
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
                            'Subject Registration Form',
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15, top: 20),
                          child: TextFormField(
                            // autovalidateMode: AutovalidateMode.always,
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
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
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
                        Row(
                          children: [
                            // Row(children: [
                            const Padding(
                                padding: EdgeInsets.only(right: 17, bottom: 15),
                                child: Text(
                                  'Target Grade',
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
                                  // hint: const Text(
                                  //   'Select',
                                  //   style: TextStyle(
                                  //     fontSize: 18,
                                  //   ),
                                  // ),
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
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            const Padding(
                                padding: EdgeInsets.only(right: 17, bottom: 15),
                                child: Text(
                                  'CreditHour',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.white),
                                )),
                            Container(
                              margin: const EdgeInsets.only(left: 12),
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
                                        ? 'please select your CrHr'
                                        : null;
                                    return null;
                                  },
                                  // hint: const Text(
                                  //   'Select',
                                  //   style: TextStyle(
                                  //     fontSize: 18,
                                  //   ),
                                  // ),
                                  dropdownColor: Colors.white,
                                  iconSize: 25,
                                  iconEnabledColor: Colors.black87,
                                  items: CrHrdropdownitems.map((item) {
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
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15, top: 15),
                          child: TextFormField(
                            controller: instructorcontroller,
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
                              label: const Text('Instructor'),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('dateTime Picker'),
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
                                              title: Row(
                                                children: const [
                                                  Icon(Icons.warning_amber),
                                                  Text(
                                                    'Success!',
                                                    style: TextStyle(
                                                      fontFamily: 'Raleway',
                                                      fontWeight:
                                                          FontWeight.bold,
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
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      primary: Colors.green,
                                                    ),
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                      //addressContoller.clear();
                                                    },
                                                    child: const Text('Ok'))
                                              ],
                                            );
                                          });
                                }
                                //return;
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
              ),
            ),
          ),
        ),
      ),
    );
  }
}
