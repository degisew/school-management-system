class Student {
  final int id;
  final String firstname;
  final String middlename;
  final String lastname;
  final int age;
  final String address;
  final String phone;
  final String gender;
  final String grade;
  final String username;
  final String password;
  final String status;
  final String role;
  Student(
      {required this.id,
      required this.firstname,
      required this.middlename,
      required this.lastname,
      required this.age,
      required this.gender,
      required this.address,
      required this.grade,
      required this.password,
      required this.phone,
      required this.role,
      required this.status,
      required this.username});
 factory Student.fromJson(Map<dynamic, dynamic> json) {
   return Student(
    id: int.tryParse(json['auto_id'].toString())!,
    firstname : json['firstname'],
    middlename: json['middlename'],
    lastname: json['lastname'],
    age: int.tryParse(json['age'].toString())!,
    gender: json['gender'],
    phone: json['phone'],
    address: json['address'],
    grade: json['grade'],
    username: json['username'],
    password: json['password'],
    status: json['statuss']!,
    role: json['role']
   );
  }
}
