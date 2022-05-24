import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../widgets/mytextformfiled.dart';

class ParentRegistration extends StatefulWidget {
  const ParentRegistration({Key? key}) : super(key: key);

  @override
  State<ParentRegistration> createState() => _ParentRegistrationState();
}

class _ParentRegistrationState extends State<ParentRegistration> {
  
  TextStyle errorstyle() {
    return const TextStyle(
        fontWeight: FontWeight.bold, backgroundColor: Colors.white);
  }

  final phonecontroller = TextEditingController();
  final fnamecontroller = TextEditingController();
  final mnamecontroller = TextEditingController();
  final addresscontroller = TextEditingController();
  final lnamecontroller = TextEditingController();
  final addressContoller = TextEditingController();
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
                    'Director Registration Form',
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
                        controller: fnamecontroller,
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
                        controller: mnamecontroller,
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
                      margin: const EdgeInsets.only(top: 20,right: 390),
                      width: 275,
                      child: TextFormfield(
                        // hinttext: 'Grand Father\'s Name',
                        controller: lnamecontroller,
                        label: 'LastName',
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
                      margin: const EdgeInsets.only(top: 20, bottom: 20),
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
                        margin: const EdgeInsets.only(top: 20, bottom: 20),
                        width: 275,
                        child: TextFormField(
                          controller: phonecontroller,
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
                            errorStyle: errorstyle(),
                            prefixText: '+251 ',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            label: const Text('Phone Number'),
                          ),
                        )),
                  ],
                ),
                
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
                                              addressContoller.clear();
                                              phonecontroller.clear();
                                              fnamecontroller.clear();
                                              lnamecontroller.clear();
                                              mnamecontroller.clear();
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
