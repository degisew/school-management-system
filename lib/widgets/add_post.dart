import 'package:flutter/material.dart';

class AddPost extends StatefulWidget {
  final String senderId;
  const AddPost(this.senderId, {Key? key}) : super(key: key);
//I used this constructor for code Re-use. i.e, I used this all code for both
//teacher add post and director add post. for that i detect the users by passing 
// this sender id data.
  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  List notfnReceiver = ['Parent', 'Student', 'Teacher'];
  var _dropValue = 'Parent';
  final _formvaluekey = GlobalKey<FormState>();
  final _thiscontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final _senderId = widget.senderId;
    return Form(
        key: _formvaluekey,
        child: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            (_senderId=='Director')?Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 30, right: 15),
                  child: Text(
                    'To Whom: ',
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
                    child: DropdownButton(
                      items: notfnReceiver.map((receiver) {
                        return DropdownMenuItem(
                            value: receiver, child: Text(receiver));
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _dropValue = value as String;
                        });
                      },
                      value: _dropValue,
                    ),
                  ),
                ),
              ],
            ):
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 570,
                  child: TextFormField(
                    controller: _thiscontroller,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please write something before send.';
                      }
                      return null;
                    },
                    autofocus: true,
                    decoration: InputDecoration(
                        hintText: 'write Message here...',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                    minLines: 6,
                    maxLines: 13,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 200, left: 30),
                  child: IconButton(
                      tooltip: 'Send',
                      visualDensity: VisualDensity.comfortable,
                      color: const Color.fromARGB(255, 89, 45, 192),
                      onPressed: () {
                        final _validate =
                            _formvaluekey.currentState!.validate();
                        if (_validate) {
                          showDialog(
                              context: context,
                              builder: (ctx) {
                                return AlertDialog(
                                  content: const Text('Send this message?'),
                                  actions: [
                                    Row(
                                      children: [
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.white,
                                              elevation: 0.0),
                                          onPressed: () {
                                            Navigator.pop(context);
                                            _thiscontroller.clear();
                                          },
                                          child: const Text(
                                            'Yes',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 241, 66, 66)),
                                          ),
                                        ),
                                        const Spacer(),
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.white,
                                              elevation: 0.0),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const Text(
                                            'Cancel',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 241, 66, 66)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                );
                              });
                        }
                      },
                      icon: const Icon(
                        Icons.send_rounded,
                        size: 50,
                      ),
                      ),
                ),
              ],
            ),
          ],
        ),
        );
  }
}
