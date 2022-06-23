import 'package:flutter/material.dart';
import '../widgets/teach_main_drawer.dart';

class TeachMainScreen extends StatelessWidget {
  const TeachMainScreen({Key? key}) : super(key: key);
  final bool wilpop = false;
  // final List<StudGridView> homescreengrid = [
  //   StudGridView(title: 'Home', icon: const Icon(Icons.home_filled)),
  //   StudGridView(
  //       title: 'Class Schedule', icon: const Icon(Icons.calendar_month)),
  //   StudGridView(
  //       title: 'Attendance',
  //       icon: const Icon(Icons.assignment_turned_in_sharp)),
  //   StudGridView(title: 'My Grade', icon: const Icon(Icons.grade)),
  //   StudGridView(title: 'Payment', icon: const Icon(Icons.payment_sharp)),
  //   StudGridView(
  //       title: 'Notifications', icon: const Icon(Icons.notification_add)),
  //   StudGridView(
  //       title: 'Add Complain', icon: const Icon(Icons.add_comment_rounded)),
  //   StudGridView(title: 'Links', icon: const Icon(Icons.link)),
  //   StudGridView(title: 'About Us', icon: const Icon(Icons.person)),
  //   StudGridView(title: 'Gallery', icon: const Icon(Icons.photo)),
  //   // StudGridView(title: 'Class Schedule'),
  //   // StudGridView(title: 'Class Schedule'),
  // ];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => wilpop,
      child: Scaffold(
        appBar: AppBar(
          //automaticallyImplyLeading: false,
          title: Center(
            child: Text(
              'welcome Teacher',
              style: Theme.of(context).appBarTheme.titleTextStyle,
            ),
          ),
        ),
        endDrawer: const Teachmaindrawer(),
         body: Container(),
        // GridView.builder(
        //     padding: const EdgeInsets.all(10),
        //     // primary: true,
        //     scrollDirection: Axis.vertical,
        //     itemCount: homescreengrid.length,
        //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //       crossAxisCount: 2,
        //       //mainAxisExtent: 20,
        //       childAspectRatio: 3 / 2,
        //       crossAxisSpacing: 30,
        //       mainAxisSpacing: 30,
        //     ),
        //     itemBuilder: (ctx, i) {
        //       return GestureDetector(
        //         onTap: () => Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //               builder: (context) => const ComplainScreen(),
        //             )),
        //         child: Container(
        //           decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(30),
        //             gradient: const LinearGradient(
        //               colors: [
        //                 Colors.green,
        //                 Colors.green,
        //               ],
        //             ),
        //           ),
        //           child: Column(
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: [
        //               homescreengrid[i].icon,
        //               Text(
        //                 homescreengrid[i].title,
        //                 style: const TextStyle(
        //                   fontFamily: 'Lobster',
        //                   fontSize: 30,
        //                   fontWeight: FontWeight.bold,
        //                   // color: Colors.white
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //       );
        //     }),
      ),
    );
  }
}
