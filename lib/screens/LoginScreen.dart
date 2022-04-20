
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../screens/adminmainscreen.dart';
import './studentMainScreen.dart';

class LoginSceen extends StatefulWidget {
  const LoginSceen({Key? key}) : super(key: key);

  @override
  _LoginSceenState createState() => _LoginSceenState();
}

class _LoginSceenState extends State<LoginSceen> {
  @override
  Widget build(BuildContext context) {

    final os = (defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS);
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var keyboard = MediaQuery.of(context).viewInsets.bottom;
    var _formkey = GlobalKey<FormState>();
    var un = TextEditingController();
    var pswd = TextEditingController();
    final appbar = AppBar(
      backgroundColor: Colors.transparent,
      // title: const Center(
      //     child: Text(
      //   'welcome to School Management System Platform!',
      // )
      //     //textAlign: TextAlign.center,

      //     ),
      //automaticallyImplyLeading: false,
    );

    return Scaffold(
      backgroundColor: Colors.transparent,
      //const Color.fromARGB(255, 7, 54, 136),
      appBar: defaultTargetPlatform == TargetPlatform.windows ? appbar : appbar,
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Padding(
          //   padding: const EdgeInsets.only(top: 30, bottom: 30),
          //   child: Container(
          //     decoration: const BoxDecoration(
          //         shape: BoxShape.circle,
          //         gradient: LinearGradient(colors: [Colors.blue, Colors.blue])),
          //     height: 120,
          //     width: 120,
          //     child: Image.asset('images/userwithlock.jpg'),
          //   ),
          // ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                width: os ? width * 0.9 : 550,
                height: os ? height * 0.8 : 600,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 244, 240, 238),
                      Color.fromARGB(255, 66, 187, 244),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topLeft
                  ),
                ),
                child: Form(
                  key: _formkey,
                  child: ListView(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30, bottom: 30),
                        child: CircleAvatar(
                          minRadius: 25,
                          child: Image.asset('images/userwithlock.jpg'),
                        ),
                      ),
                      // const SizedBox(
                      //   height: 130,
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, bottom: 30),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'username',
                          ),
                          validator: (value) {
                            if (value == null) {
                              return 'please enter your username';
                            }
                          },
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, bottom: 30),
                          child: TextFormField(
                            decoration:
                                const InputDecoration(labelText: 'password'),
                            validator: (value) {
                              if (value == null) {
                                return 'this field is required. please fill';
                              }
                            },
                          )),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: InkWell(
                          child: Text(
                            'forgot pasword?',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Raleway',
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 140, right: 140, top: 20),
                        child: ElevatedButton(
                          onPressed: () {
                            var validate = _formkey.currentState!.validate();
                            // if (!validate) {
                            //   ScaffoldMessenger.of(context)
                            //       .showSnackBar(const SnackBar(
                            //           content: Text(
                            //     'Incorrect Credentials!',
                            //     textAlign: TextAlign.center,
                            //     style: TextStyle(
                            //       fontFamily: 'Raleway',
                            //       fontSize: 25,
                            //       fontWeight: FontWeight.bold,
                            //       // color: Colors.red,
                            //     ),
                            //   )));
                            // } else {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const AdminMainScreen()));
                            // }
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Raleway',
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold),
                          ),
                          style:
                              ElevatedButton.styleFrom(primary: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
