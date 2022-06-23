import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/json_convert_to_list.dart';

// List<response> responses(String josndata) {
//   final converted = json.decode(josndata).cast<Map<String, dynamic>>();
//   return converted.map<response>((json) => response.fromJson(json)).toList();
// }

Future addStudent(
    fname, mname, lname, age, gender, grade, phone, address) async {
  const url = 'http://10.162.75.141/php/addstudent.php';
  var _response = await http.post(Uri.parse(url), body: {
    'fn': fname,
    'mn': mname,
    'ln': lname,
    'age': age,
    'add': address,
    'sex': gender,
    'level': grade,
    'phonen': '+251' + phone,
  });
  print(json.decode(_response.body));
}

Future addDirector(
    fname, mname, lname, age, gender, qlfn, phone, address, salary, exp) async {
  const url = 'http://10.162.75.141/php/adddirector.php';
  var _response = await http.post(Uri.parse(url), body: {
    'fname': fname,
    'mname': mname,
    'lname': lname,
    'age': age,
    'add': address,
    'sex': gender,
    'qlfn': qlfn,
    'phonen': '+251' + phone,
    'salary': salary + ' ' + 'ETB',
    'exp': exp + ' ' + 'Years',
  });
  print(json.decode(json.encode(_response.body)));
}

Future addTeacher(
    fname, mname, lname, age, gender, qlfn, phone, address, salary, exp) async {
  const url = 'http://10.162.75.141/php/addteacher.php';
  var _response = await http.post(Uri.parse(url), body: {
    'fname': fname,
    'mname': mname,
    'lname': lname,
    'age': age,
    'add': address,
    'sex': gender,
    'qlfn': qlfn,
    'phonen': '+251' + ' ' + phone,
    'salary': salary + ' ' + 'ETB',
    'exp': exp + ' ' + 'Years',
  });
  print(json.decode(json.encode(_response.body)));
}

Future addParent(
    fname, mname, lname, age, gender, grade, phone, address) async {
  const url = 'http://10.162.75.141/php/addparent.php';
  var response = await http.post(Uri.parse(url), body: {
    'fn': fname,
    'mn': mname,
    'ln': lname,
    'age': age,
    'add': address,
    'sex': gender,
    'level': grade,
    'phonen': phone,
  });
  print(json.decode(json.encode(response.body)));
}

Future addSubject(sname, scode, grade, credit) async {
  const url = 'http://10.162.74.62/php/addsubject.php';
  var response = await http.post(Uri.parse(url),
      body: {'sname': sname, 'scode': scode, 'grade': grade, 'credit': credit});
  print(json.decode(json.encode(response.body)));
}

//manage student
Future<Student> manageStudent() async {
  const url = 'http://10.162.75.141/php/fetchstudent.php';
  var response = await http.post(Uri.parse(url));
  //print(response.body);
  if (response.statusCode == 200) {
    
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Student.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load Student');
  }
}
//active deactive user

Future active(String id, int status, String role) async {
  const url = 'http://10.162.75.141/php/activateuser.php';
  var _activateuser = await http.post(Uri.parse(url),
      body: {'id': id, 'status': status.toString(), 'role': role});
  print(_activateuser.body);

  // var _returned = json.decode(_activateuser.body);
  //print(_returned);
}

// Future deactive(fname) async {
//   const url = 'http://10.162.74.62/php/deactivateuser.php';
//   var _deactivateuser = await http.post(Uri.parse(url),
//   body: {
//     'id':fname
//   });

//   print(_deactivateuser.body);
// }
