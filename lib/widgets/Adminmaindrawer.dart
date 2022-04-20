import 'package:flutter/material.dart';
import 'package:my_school/screens/ManageUser.dart';
import 'package:my_school/screens/SettingsScreen.dart';
import 'package:my_school/screens/addUser.dart';
import 'package:my_school/screens/paymentRecord.dart';
import 'package:my_school/screens/subjectRegistration.dart';
import 'package:my_school/widgets/footer.dart';
//import 'package:my_school/screens/teachRegistration.dart';
import '../screens/studRegistratin.dart';
import '../screens/teachRegistration.dart';
import '../widgets/exit_changepinConfirmation.dart';
import '../models/studentGridView.dart';

class AdminMainDrawer extends StatelessWidget {
  AdminMainDrawer({Key? key}) : super(key: key);

  // final List<AdminDrawer> admnindrawer = [
  //   AdminDrawer(title: 'Home', icon: const Icon(Icons.home)),
  //   AdminDrawer(title: 'Add student', icon: const Icon(Icons.add)),
  //   AdminDrawer(
  //       title: 'Manage Student', icon: const Icon(Icons.manage_accounts)),
  //   AdminDrawer(title: 'Add Teacher', icon: const Icon(Icons.add)),
  //   AdminDrawer(
  //       title: 'Manage Teacher', icon: const Icon(Icons.manage_accounts)),
  //   AdminDrawer(title: 'Add Subject', icon: const Icon(Icons.add)),
  //   AdminDrawer(
  //       title: 'Manage Subject', icon: const Icon(Icons.manage_accounts)),
  //   AdminDrawer(title: 'View Feedback', icon: const Icon(Icons.comment)),
  //   AdminDrawer(title: 'Change Pin', icon: const Icon(Icons.change_circle)),
  //   AdminDrawer(title: 'Logout', icon: const Icon(Icons.exit_to_app)),
  // ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(),
            accountName: Text('Dagi'),
            accountEmail: Text('jegisew21@gmail.com'),
          ),
          Card(
            child: ListTile(
              title: const Text('Home'),
              trailing: const Icon(Icons.home),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Add User'),
              trailing: const Icon(Icons.person_add),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Adduser()));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Manage User'),
              trailing: const Icon(Icons.manage_accounts),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const ManageUser()));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Payment'),
              trailing: const Icon(Icons.account_balance_wallet),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PaymentRecord()));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Inbox'),
              trailing: const Icon(Icons.inbox),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Settings'),
              trailing: const Icon(Icons.settings),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingsScreen(),
                    ));
              },
            ),
          ),
         
          const Card(
            child: ExitConfirmation(),
          ),
         const  FooterText(),
        ],
      ),

      //  ListView.builder(
      //   itemBuilder: (context, i) {
      //     return Card(
      //       child: ListTile(
      //         trailing: admnindrawer[i].icon,
      //         title: Text(admnindrawer[i].title),
      //       ),
      //     );
      //   },
      //   itemCount: admnindrawer.length,
      // ),
    );
  }
}
