import 'package:flutter/material.dart';
import '../models/json_convert_to_list.dart';
import '../services/sample_http.dart';
import '../widgets/admin_main_drawer.dart';

class ManageUser extends StatefulWidget {
  const ManageUser({Key? key}) : super(key: key);

  @override
  State<ManageUser> createState() => _ManageUserState();
}

class _ManageUserState extends State<ManageUser> {
  late Future<Student> futureStudent;
  @override
  void initState() {
    futureStudent = manageStudent() as Future<Student>;
    print(futureStudent);
    // TODO: implement initState
    super.initState();
  }

  var _active = 1;
  var _activeColor = true;

  void status() {
    setState(() {
      //_active = !_active;
      _activeColor = !_activeColor;
    });
  }

  //var _tapedvalue = true;
  Future<void> changeDBStatusValueOnTap(
      String id, int status, String role) async {
    setState(() {
      // _active = !_active;
      _activeColor = !_activeColor;
    });
    // _tapedvalue = !_tapedvalue;
    // if (_tapedvalue) {
    //   deactive(id); //update your databasestatus
    // } else {
    active(id, status, role);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(),
        drawer: const AdminMainDrawer(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 50),
                  child: Icon(
                    Icons.manage_accounts,
                    size: 40,
                    color: Color.fromARGB(255, 68, 138, 255),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 50),
                  child: Text(
                    'Manage',
                    style: TextStyle(
                      fontFamily: 'RobotoMono',
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RotatedBox(
                  quarterTurns: 1,
                  child: Container(
                    padding: const EdgeInsets.only(left: 20),
                    // decoration: const BoxDecoration(
                    //     gradient: LinearGradient(colors: [
                    //   Colors.amber,
                    //   Colors.amber,
                    // ])),
                    width: 300,
                    height: 250,
                    child: const TabBar(
                        indicatorPadding: EdgeInsets.all(10),
                        indicatorWeight: 13,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor: Colors.black,
                        unselectedLabelColor: Colors.black,
                        unselectedLabelStyle: TextStyle(
                          backgroundColor: Colors.white,
                        ),
                        padding: EdgeInsets.only(top: 0),
                        isScrollable: true,
                        labelColor: Colors.white,
                        labelStyle: TextStyle(
                            backgroundColor: Colors.green,
                            //color: Colors.black,
                            fontFamily: 'RobotoMono',
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                        tabs: [
                          RotatedBox(
                              quarterTurns: 3, child: Text('Manage Students')),
                          RotatedBox(
                            quarterTurns: 3,
                            child: Text('Manage Teachers'),
                          ),
                          RotatedBox(
                              quarterTurns: 3, child: Text('Manage Director')),
                          RotatedBox(
                              quarterTurns: 3, child: Text('Manage Parents')),
                          RotatedBox(
                              quarterTurns: 3, child: Text('Manage Subjects')),
                        ]),
                  ),
                ),
                Flexible(
                    child: Card(
                  elevation: 30,
                  margin: const EdgeInsets.only(left: 150, right: 200),
                  child: SizedBox(
                    //padding: const EdgeInsets.only(left: 150, right: 200),
                    //width: double.maxFinite,
                    height: 500,
                    child: TabBarView(children: [
                      Center(
                        child: FutureBuilder<Student>(
                            future: futureStudent,
                            // initialData: InitialData,

                            builder:
                                (BuildContext context, AsyncSnapshot snapshot) {
                              // print(snapshot.data);
                              // if (snapshot.hasData) {
                              //   return Text(snapshot.data.firstname);
                              // } else if (snapshot.hasError) {
                              //   return Text('${snapshot.error}');
                              // }

                              // By default, show a loading spinner.
                              //return const CircularProgressIndicator();
                              _active = int.tryParse(snapshot.data!.id.toString())!;
                              // ignore: avoid_print
                              // print(
                              //     "Result ${snapshot.data['statuss'].runtimeType}");

                              return DataTable(
                                  dataRowHeight: 50,
                                  border: TableBorder.all(
                                    width: 2,
                                    style: BorderStyle.solid,
                                  ),
                                  columns: const [
                                    DataColumn(label: Text('fname')),
                                    DataColumn(label: Text('mname')),
                                    DataColumn(label: Text('lname')),
                                    DataColumn(label: Text('age')),
                                    DataColumn(label: Text('phone')),
                                    DataColumn(label: Text('status')),
                                  ],
                                  rows: [
                                    DataRow(cells: [
                                      DataCell(
                                        Text(snapshot.data!.firstname.toString()),
                                      ),
                                      DataCell(
                                        Text(snapshot.data!.middlename.toString()),
                                      ),
                                      DataCell(
                                        Text(snapshot.data!.lastname.toString()),
                                      ),
                                      DataCell(
                                        Text(snapshot.data!.age.toString()),
                                      ),
                                      DataCell(
                                        Text(snapshot.data!.phone.toString()),
                                      ),
                                      DataCell(Column(
                                        children: [
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          RaisedButton(
                                              color: _active == 1
                                                  ? const Color.fromARGB(
                                                      255, 27, 118, 30)
                                                  : const Color.fromRGBO(
                                                      244, 67, 54, 1),
                                              child: _active == 1
                                                  ? const Text('Active')
                                                  : const Text('Deactive'),
                                              onPressed: () {
                                                setState(() {
                                                  _active == 1 ? 0 : 1;
                                                });

                                                changeDBStatusValueOnTap(
                                                    snapshot.data!.id
                                                        .toString(),
                                                    _active,
                                                    snapshot.data!.role
                                                        .toString());
                                              }),
                                        ],
                                      )),
                                    ]),

                              DataRow(key: UniqueKey(), cells: [
                                DataCell(
                                        Text(snapshot.data!.firstname
                                            .toString()),
                                      ),
                                      DataCell(
                                        Text(snapshot.data!.middlename
                                            .toString()),
                                      ),
                                      DataCell(
                                        Text(
                                            snapshot.data!.lastname.toString()),
                                      ),
                                      DataCell(
                                        Text(snapshot.data!.age.toString()),
                                      ),
                                      DataCell(
                                        Text(snapshot.data!.phone.toString()),
                                      ),
                                DataCell(Column(
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    RaisedButton(
                                        color: _activeColor
                                            ? Colors.green
                                            : Colors.red,
                                        child: _active == 1
                                            ? const Text('active')
                                            : const Text('Deactive'),
                                        onPressed: () {
                                          status();
                                        }),
                                  ],
                                )),
                              ])
                              ]);
                            }),
                      ),
                      Center(
                        child: FutureBuilder(
                            future: manageStudent(),
                            // initialData: InitialData,

                            builder:
                                (BuildContext context, AsyncSnapshot snapshot) {
                              return const CircularProgressIndicator();
                            }),
                      ),
                      Center(
                        child: FutureBuilder(
                            future: manageStudent(),
                            // initialData: InitialData,

                            builder:
                                (BuildContext context, AsyncSnapshot snapshot) {
                              return const CircularProgressIndicator();
                            }),
                      ),
                      Center(
                        child: FutureBuilder(
                            future: manageStudent(),
                            // initialData: InitialData,

                            builder:
                                (BuildContext context, AsyncSnapshot snapshot) {
                              return const CircularProgressIndicator();
                            }),
                      ),
                      Center(
                        child: FutureBuilder(
                            future: manageStudent(),
                            // initialData: InitialData,

                            builder:
                                (BuildContext context, AsyncSnapshot snapshot) {
                              return const CircularProgressIndicator();
                            }),
                      ),
                    ]),
                  ),
                ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
