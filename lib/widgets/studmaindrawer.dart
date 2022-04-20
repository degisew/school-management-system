//import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_school/screens/studview.dart';
import '../screens/SettingsScreen.dart';
import 'exit_changepinConfirmation.dart';
import 'footer.dart';

//import '../screens/LoginScreen.dart';

//  enum randomcolor{
//    //Colors.blue;

// }
class Studmaindrawer extends StatelessWidget {
  const Studmaindrawer({Key? key}) : super(key: key);

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
          const ListTile(
            title: Text('Home'),
            trailing: Icon(Icons.home),
          ),
          ListTile(
            title: const Text('view'),
            trailing: const Icon(Icons.remove_red_eye),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const StudView()));
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
