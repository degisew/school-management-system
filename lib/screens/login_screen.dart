import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../screens/add_user.dart';
import '../services/users.dart';
//import 'package:my_school/screens/director_main_screen.dart';
//import 'package:my_school/screens/teach_main_screen.dart';
//import '../screens/director_main_screen.dart';
//import 'director_main_screen.dart';

class LoginSceen extends StatefulWidget {
  const LoginSceen({Key? key}) : super(key: key);

  @override
  State<LoginSceen> createState() => _LoginSceenState();
}

class _LoginSceenState extends State<LoginSceen> {
  final _uncontroller = TextEditingController();
  final _pwdcontroller = TextEditingController();
  bool _obscureText = true;

  void toogleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    final os = (defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS);
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    //var keyboard = MediaQuery.of(context).viewInsets.bottom;
    var _formkey = GlobalKey<FormState>();
    //var un = TextEditingController();
    //var pswd = TextEditingController();

    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Container(
                width: os ? width * 0.9 : 550,
                height: os ? height * 0.8 : 600,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(colors: [
                    Color.fromARGB(255, 244, 240, 238),
                    Color.fromARGB(255, 127, 206, 243),
                  ], begin: Alignment.bottomCenter, end: Alignment.topLeft),
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
                            left: 50, right: 50, bottom: 30),
                        child: TextFormField(
                          controller: _uncontroller,
                            decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.person),
                                labelText: 'username',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                )),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'please enter your username';
                              }
                              return null;
                            }),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 50, right: 50, bottom: 25),
                          child: TextFormField(
                            controller: _pwdcontroller,
                            obscureText: _obscureText,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.lock),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              labelText: 'password',
                              suffixIcon: IconButton(
                                icon: const Icon(Icons.visibility_off),
                                //: const Icon(Icons.visibility),
                                onPressed: (){},
                                //onPressed: toogleVisibility,
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'this field is required. please fill';
                              }
                              return null;
                            },
                          )),
                      const Padding(
                        padding: EdgeInsets.only(left: 50),
                        child: InkWell(
                          child: Text(
                            'forgot pasword?',
                            style: TextStyle(
                                color: Color.fromARGB(255, 29, 14, 240),
                                fontFamily: 'Raleway',
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 140, right: 140, top: 40),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(35),
                          child: SizedBox(
                            height: 40,
                            child: ElevatedButton(
                              onPressed: () {
                                var validate =
                                    _formkey.currentState!.validate();
                                if (validate) {
                                  login(context,
                                    _uncontroller.text,
                                    _pwdcontroller.text);
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (_) => const Adduser()));
                                }
                              },
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Lobster',
                                  fontSize: 30,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black,
                              ),
                            ),
                          ),
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
