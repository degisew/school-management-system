import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../screens/director_main_screen.dart';
import '../screens/student_main_screen.dart';
import '../screens/add_user.dart';
import '../screens/admin_main_screen.dart';
import '../screens/teach_main_screen.dart';
import '../screens/parent_main_screen.dart';

Future login(context, username, password) async {
  var url = 'http://10.162.75.141/php/users.php';
  var _response = await http.post(Uri.parse(url), body: {
    'username': username,
    'password': password,
  });
  var data = json.decode(_response.body);
  print(data);
  print(data.runtimeType);
//valiating each user
  if (data != null) {
    if (data['statuss'] == '1' && data['role'] == 'teacher') {
      Navigator.push(
          context, MaterialPageRoute(builder: (_) => const TeachMainScreen()));
    } else if (data['statuss'] == '1' && data['role'] == 'director') {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const DirectorMainScreen()));
    } else if (data['statuss'] == '1' && data['role'] == 'admin') {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const AdminMainScreen()));
    } else if (data['statuss'] == '1' && data['role'] == 'student') {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const StudMainScreen()));
    } else if (data['statuss'] == '1' && data['role'] == 'parent') {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const ParentMainScreen()));
    } else {
      showDialog(
          context: context,
          builder: (context) => const AlertDialog(
                title: Text('Sorry! your account is Deactivated.'),
              ));
    }
  } else {
    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
              title: Text('Invalid Credentials!'),
            ));
  }
}
