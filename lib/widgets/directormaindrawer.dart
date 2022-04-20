//import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_school/screens/directortasks.dart';
import 'package:my_school/screens/studview.dart';
import 'package:my_school/screens/teachActivities.dart';
import 'package:my_school/screens/teachmainscreen.dart';
import 'package:my_school/widgets/footer.dart';
import '../screens/SettingsScreen.dart';
import '../screens/Directormainscreen.dart';
import 'exit_changepinConfirmation.dart';

//import '../screens/LoginScreen.dart';

//  enum randomcolor{
//    //Colors.blue;

// }
class Directormaindrawer extends StatelessWidget {
  const Directormaindrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const SizedBox(),
          const UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.green,
              // child: Image(
              //   image: NetworkImage(
              //       'https://www.google.com/search?q=Sample+image+url&sa=X&biw=1366&bih=649&tbm=isch&source=iu&ictx=1&vet=1&fir=Mdlp-4_rDOTaLM%252C8UmY9BIZlcHvZM%252C_%253Bq9CkBYSVHv6UvM%252C31qpFmzyUINLPM%252C_%253BfK6SFKLhI7Vu7M%252CBR5IrvO_GnylcM%252C_%253BxpeKjqK5OvLVUM%252CBzMXIkeIgYnXEM%252C_%253Bu6m0bqVF_iBVoM%252CINvIfN6HZc1S7M%252C_%253BnqCzAZFVfmrDnM%252CCFueadwjE5FYgM%252C_%253B91qytDE8xcKwEM%252C_c0dVYSNpqbDsM%252C_%253BOfyJgROAhggk9M%252CapLMkmQFiRdKEM%252C_%253BBjJWd619jJVwrM%252CAIa9k_HoAFpNpM%252C_%253BvcDlIJEnD2HHpM%252CKe1g04_Q-Hc_mM%252C_&usg=AI4_-kSo5uWupekDPIDJzXenTJst0-yRxA&ved=2ahUKEwjanqaB9JX2AhWixoUKHR7YCS0Q9QF6BAgBEAE#imgrc=Mdlp-4_rDOTaLM'),
              // ),
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
                  builder: ((context) => const Directormainscreen())),
            ),
          ),
          ListTile(
            title: const Text('Tasks'),
            trailing: const Icon(Icons.task),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Directortasks()));
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
          // Padding(
          //   padding: const EdgeInsets.only(top: 140),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: const [
          //       Padding(
          //           padding: EdgeInsets.only(
          //             right: 10,
          //           ),
          //           child: Icon(Icons.school)),
          //       Text('Montosorian high school'),
          //     ],
          //   ),
          // ),
          // const Center(
          //   child: Text(
          //     'School management system web app(v.1)',
          //     style: TextStyle(
          //       fontFamily: 'Raleway',
          //       fontStyle: FontStyle.italic,
          //       fontSize: 15,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
