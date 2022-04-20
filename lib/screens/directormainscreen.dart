//import 'package:fluent_ui/fluent_ui.dart';
import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:my_school/models/studentGridView.dart';
import 'package:my_school/screens/CompalinScreen.dart';
import 'package:my_school/screens/studRegistratin.dart';
import 'package:my_school/widgets/directormaindrawer.dart';
import 'package:my_school/widgets/teachmaindrawer.dart';
import '../widgets/studmaindrawer.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class Directormainscreen extends StatefulWidget {
  const Directormainscreen({Key? key}) : super(key: key);

  @override
  State<Directormainscreen> createState() => _DirectormainscreenState();
}

class _DirectormainscreenState extends State<Directormainscreen> {
  final bool wilpop = false;

  List<String> dropdownitems=['a','b','c','d'];

  // final List<StudGridView> homescreengrid = [
  @override
  Widget build(BuildContext context) {

    
    var popupselectedval = 'Admin';
    return WillPopScope(
      onWillPop: () async => wilpop,
      // child: DefaultTabController(
      //   length: 4,
      //   child:
        child: Scaffold(
         
          // const TabBar(
          //   isScrollable: true,
          //   labelPadding:  EdgeInsets.symmetric(horizontal: 10),
          //   //controller: _controller,
          // //  indicatorSize: TabBarIndicatorSize.,
          //   tabs: [
          //      Tab(
          //       child: Text(
          //         'tasks',
          //         style: TextStyle(
          //           color: Colors.black,
          //         ),
          //       ),
          //     ),
          
          //     Tab(
          //       child: Text(
          //         'settings',
          //         style: TextStyle(
          //           color: Colors.black,
          //         ),
          //       ),
          //     ),
          //     Tab(
          //       child: Text(
          //         'view',
          //         style: TextStyle(
          //           color: Colors.black,
          //         ),
          //       ),
          //     ),
          //     Tab(
          //       child: Text(
          //         'help',
          //         style: TextStyle(
          //           color: Colors.black,
          //         ),
          //       ),
          //     )
          //   ],
          // ),
          appBar: AppBar(
            // toolbarHeight: 50,
            //leadingWidth: 260,
            actions:[

                  //const Icon(Icons.school),
                  ElevatedButton(
                    onPressed: ((){
                      showDialog(
                        context: context,
                         builder:(context)=>const AlertDialog(
                           
                         )
                         
                         );
                    }),
                    child: const Text('Tasks'),
                      // child: PopupMenuButton(
                      //     //elevation: 150,
                      //     //  offset: Offset.fromDirection(5,1),
                      //     icon: const Text('Tasks'),
                      //     iconSize: 40,
                      //     itemBuilder: (_) => [
                      //         const   PopupMenuItem(
                      //             // height: 640,
                      //             //padding:  EdgeInsets.only(top: 50),
                      //             child:  Text('Add student'),
                    
                      //           ),
                      //           const PopupMenuItem(child: Text('Manage student')),
                      //           const PopupMenuItem(child: Text('Add Teacher')),
                      //           const PopupMenuItem(child: Text('Manage Teacher')),
                      //           const PopupMenuItem(child: Text('Add Subject')),
                      //           const PopupMenuItem(child: Text('Manage Subject')),
                      //           const PopupMenuItem(child: Text('Manage Teacher')),
                      //           const PopupMenuItem(child: Text('Add Payment')),
                      //         ]),
                    ),
                 CustomDropdownButton2(hint: 'hint', value: dropdownitems[0], 
                 dropdownItems: dropdownitems, onChanged: (val){
                   
                 }),
                  PopupMenuButton(
                      icon: const Text('view'),
                      iconSize: 40,
                      itemBuilder: (_) => [
                            const PopupMenuItem(child: Text('View feedback')),
                            // const PopupMenuItem(child: Text('Manage student')),
                            // const PopupMenuItem(child: Text('Add Teacher')),
                            // const PopupMenuItem(child: Text('Manage Teacher')),
                          ]),
                          
                  PopupMenuButton(
                      icon: const Text('Settings'),
                      iconSize: 50,
                      itemBuilder: (_) => [
                            const PopupMenuItem(child: Text('Profile Me')),
                            const PopupMenuItem(child: Text('Change Pin')),
                            // const PopupMenuItem(child: Text('Add Teacher')),
                            // const PopupMenuItem(child: Text('Manage Teacher')),
                          ]),
                  PopupMenuButton(
                      icon: const Text('Help'),
                      iconSize: 40,
                      itemBuilder: (_) => [
                            const PopupMenuItem(child: Text('Add student')),
                            const PopupMenuItem(child: Text('Manage student')),
                            const PopupMenuItem(child: Text('Add Teacher')),
                            const PopupMenuItem(child: Text('Manage Teacher')),
                          ])
            // ],Container(
            //   child: Row(
            //     //mainAxisAlignment: MainAxisAlignment.spaceAround,

                //children: 
                ],
            
            ),
            //automaticallyImplyLeading: false,
            // title: Center(
            //   child: Text(
            //     'welcome Director',
            //     style: Theme.of(context).appBarTheme.titleTextStyle,
            //   ),
            // ),
          
          drawer: const Directormaindrawer(),
          body: Container(),
          // TabBarView(
          //   children: [
          //     ListView(
          //       children: const [
          //         Text('data'),
          //         Text('x'),
          //         Text('y'),
          //         Text('z'),
          //       ],
          //     ),
          //     ListView(
          //       children: const [
          //         Text('data'),
          //         Text('x'),
          //         Text('y'),
          //         Text('z'),
          //       ],
          //     ),
          //     ListView(
          //       children: const [
          //         Text('data'),
          //         Text('x'),
          //         Text('y'),
          //         Text('z'),
          //       ],
          //     ),
          //     ListView(
          //       children: const [
          //         Text('data'),
          //         Text('x'),
          //         Text('y'),
          //         Text('z'),
          //       ],
          //     ),
          //   ],
          // ),

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
               //),
       // ),
      ),
    );
  }
}
