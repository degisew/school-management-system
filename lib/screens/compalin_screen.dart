import 'package:flutter/material.dart';

class ComplainScreen extends StatelessWidget {
  const ComplainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('add your complain')),
      ),
      body: Form(
          child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 50, left: 10, right: 10, bottom: 30),
            child: TextFormField(
              // maxLength: 100,
              maxLines: 10,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: 'write down your complain here',
                  hintStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  )),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Send'),
          ),
        ],
      )),
    );
  }
}
