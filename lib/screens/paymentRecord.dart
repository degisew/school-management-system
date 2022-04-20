import 'package:abushakir/abushakir.dart';
import 'package:flutter/material.dart';
import 'package:my_school/widgets/Adminmaindrawer.dart';

class PaymentRecord extends StatefulWidget {
  const PaymentRecord({Key? key}) : super(key: key);

  @override
  State<PaymentRecord> createState() => _PaymentRecordState();
}

class _PaymentRecordState extends State<PaymentRecord> {
  List gradedropdowncategory = [
    'KG',
    'Elementary',
    'High_School',
    'Preparatory'
  ];
  final idcontroller = TextEditingController();
  final namecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var gradedropdownvalue = 'KG';
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('images/background.png'),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      scrollable: true,
                      content: Form(
                        child: Column(
                          children: [
                            DropdownButtonHideUnderline(
                              child: DropdownButtonFormField(
                                items: gradedropdowncategory.map((item) {
                                  return DropdownMenuItem(
                                    //alignment: AlignmentDirectional.topStart,
                                    child: Text(item),
                                    value: item,
                                  );
                                }).toList(),
                                onChanged: (val) {
                                  gradedropdownvalue = val as String;
                                },
                              ),
                            ),
                            TextFormField(
                              controller: idcontroller,
                            ),
                            TextFormField(
                              controller: namecontroller,
                            ),
                            TextFormField(),
                            TextButton.icon(
                                onPressed: () {
                                  showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2022),
                                    lastDate: DateTime(2024),
                                  );
                                },
                                icon: const Icon(Icons.calendar_month),
                                label: const Text('Select Month')),
                            ElevatedButton(
                              onPressed: () {
                                //here validae the form first.
                                idcontroller.clear();
                                namecontroller.clear();
                              },
                              child: const Text('Record'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                icon: const Icon(Icons.add)),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.calendar_month),
                label: const Text('Select Month')),
          ],
          backgroundColor: Colors.transparent,
        ),
        drawer: AdminMainDrawer(),
        body: ListView(),
        floatingActionButton: FloatingActionButton(onPressed: (() {})),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}
