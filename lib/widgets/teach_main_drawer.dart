import 'package:flutter/material.dart';
import 'package:my_school/screens/teach_activities.dart';
import 'package:my_school/screens/teach_main_screen.dart';
import '../screens/settings_screen.dart';
import 'exit_changepin_confirmation.dart';
import 'footer.dart';

class Teachmaindrawer extends StatelessWidget {
  const Teachmaindrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const SizedBox(),
          const UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.green,
            ),
            accountName: Text('accountName'),
            accountEmail: Text('jegisew21@gmail.com'),
          ),
          ListTile(
            title: const Text('Home'),
            trailing: const Icon(Icons.home),
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: ((context) => const Teachmainscreen())),
            ),
          ),
          ListTile(
            title: const Text('Activities'),
            trailing: const Icon(Icons.task),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Teachactivities()));
            },
          ),
          const Divider(),
          ListTile(
            trailing: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SettingsScreen()));
            },
          ),
          const Divider(),
          const ExitConfirmation(),
          const FooterText(),
        ],
      ),
    );
  }
}
