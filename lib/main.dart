//import 'dart:html';

import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
//import 'package:abushakir/abushakir.dart';
//import 'package:intl/intl.dart';
// //import 'package:localization/localization.dart';
// import '../screens/homescreen.dart';

// import './screens/LoginScreen.dart';

void main() {
  runApp(
    MaterialApp(
      //  localizationsDelegates: [
      //     // delegate from flutter_localization
      //     GlobalMaterialLocalizations.delegate,
      //     GlobalWidgetsLocalizations.delegate,
      //     GlobalCupertinoLocalizations.delegate,
      //     // delegate from localization package.
      //     LocalJsonLocalization.delegate,
      //   ],
      //   supportedLocales: [
      //     const Locale('en', 'US'), // English
      //     const Locale('he', 'IL'), // Hebrew
      //     // ... other locales the app supports
      //   ],
      debugShowCheckedModeBanner: false,
      title: 'welcome to montossorian School!',
      home: const Homescreen(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
              color: Colors.black,
              fontFamily: 'lobster',
              fontSize: 40,
              fontWeight: FontWeight.bold),
        ),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodySmall: const TextStyle(
                color: Color.fromARGB(255, 194, 153, 31),
              ),
              titleSmall: const TextStyle(
                fontFamily: 'Lobster',
                fontSize: 20,
              ),
            ),
      )
      //     ),
      //   ),
    ),
  );
}
