import 'package:flutter/material.dart';
import '../screens/home_screen.dart';

class ExitConfirmation extends StatelessWidget {
  const ExitConfirmation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        // title:
        title: const Text('Logout'),
        trailing: const Icon(
          Icons.logout,
        ),
        onTap: () {
          showDialog(
              context: context,
              builder: (ctx) {
                return AlertDialog(
                  title: Row(
                    children: const [
                      Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.warning,
                            size: 40,
                            color: Color.fromARGB(255, 183, 140, 13),
                          )),
                      Text(
                        'Exit?',
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      )
                    ],
                  ),
                  content: const Text('are you sure you want to exit?'),
                  actions: [
                    Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white, elevation: 0.0),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Homescreen()),
                            );
                          },
                          child: const Text(
                            'Yes',
                            style: TextStyle(
                                color: Color.fromARGB(255, 241, 66, 66)),
                          ),
                        ),
                        const Spacer(),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white, elevation: 0.0),
                          onPressed: () {
                            Navigator.of(context).pop();
                            Navigator.of(context).pop();
                          },
                          child: const Text(
                            'Cancel',
                            style: TextStyle(
                                color: Color.fromARGB(255, 241, 66, 66)),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              });
        });
  }
}

class ChangePin extends StatelessWidget {
  const ChangePin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        trailing: const Icon(Icons.change_circle),
        title: const Text('Change Pin'),
        onTap: () {
          Navigator.pop(context);
          showModalBottomSheet(
              constraints: const BoxConstraints(
                maxHeight: 400,
              ),
              context: context,
              builder: (ctx) {
                return Column(children: [
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 10, right: 10, top: 30, bottom: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter old pin',
                      ),
                      style: TextStyle(),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 10, right: 10, top: 30, bottom: 20),
                    child: TextField(
                        decoration: InputDecoration(
                      hintText: 'Enter new pin',
                    )),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 10, right: 10, top: 30, bottom: 20),
                    child: TextField(
                        decoration: InputDecoration(
                      hintText: 'Confirm new pin',
                    )),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text('Update'),
                  ),
                ]);
              });

          // pin update page will pop up.
        });
  }
}
