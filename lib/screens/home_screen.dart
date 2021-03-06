import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_school/screens/login_screen.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  final TargetPlatform aos = TargetPlatform.android;
  final TargetPlatform ios = TargetPlatform.iOS;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 244, 143, 176)
                ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: (defaultTargetPlatform == ios || defaultTargetPlatform == aos)
              ? AppBar()
              : AppBar(
                  backgroundColor:const Color.fromARGB(255, 192, 96, 163),
                  elevation: 1,
                  // toolbarHeight: 100,
                  actions: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white, elevation: 0.0),
                            onPressed: () {
                              //return null
                            },
                            child: const Text(
                              'Home',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              //  style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              elevation: 0.0,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LoginSceen()));
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              //style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              elevation: 0.0,
                            ),
                            onPressed: () {
                              //return null
                            },
                            child: const Text(
                              'AboutUs',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              // style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
          body: Column(
            children: [
             const Padding(
               padding:  EdgeInsets.only(top: 140),
                child: Text(
                  'Welcome',
                style: TextStyle(
                  fontFamily: 'Lobster',
                  fontSize: 200,
                  color: Colors.white,
                )
                ),
              ),
                  Center(
                    //heightFactor: 800,
                    child: Container(
                      padding: const EdgeInsets.only(top: 80),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: const Color.fromARGB(255, 46, 164, 117),
                            minimumSize: const Size(250, 50),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginSceen()));
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            //style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      ),
                    ),
                  ),
              
            ],
          )
          // Row(
          //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Container(
          //         margin: const EdgeInsets.only(left: 20),
          //         width: 420,
          //         child: Column(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: const [
          //             Text(
          //               'Education',
          //               textAlign: TextAlign.left,
          //               style: TextStyle(
          //                   fontWeight: FontWeight.bold,
          //                   fontSize: 40,
          //                   fontFamily: 'RobotoMono',
          //                   fontStyle: FontStyle.italic),
          //             ),
                    //   Padding(
                    //     padding: EdgeInsets.only(bottom: 20),
                    //     child: Text(
                    //       'Education is th most powerful weapon, we can use to change the world',
                    //       style: TextStyle(
                    //           fontFamily: 'raleway',
                    //           fontSize: 20,
                    //           fontStyle: FontStyle.italic),
                    //     ),
                    //   ),
                    //   Text(
                    //     'Nelson Mandela',
                    //     style: TextStyle(fontFamily: 'Lobster'),
                    //   ),
                    //],
                  
             
            //],
          )
        ),
      );

  }
}
