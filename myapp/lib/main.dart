import 'dart:js';

import 'package:flutter/material.dart';
import 'package:myapp/login_page.dart';
import 'package:myapp/signup_page.dart';
import 'package:myapp/welcome_page.dart';
import 'package:get/get.dart';

import 'package:myapp/pages/home.dart';
import 'package:myapp/pages/loading.dart';
import 'package:myapp/pages/choose_location.dart';
void main() => runApp(GetMaterialApp(
  initialRoute: '/',
  routes:{
    '/':(context)=>LoginPage(),
    // '/':(context) =>Loading(),
    // '/home':(context) => Home(),
    // '/location':(context) => ChooseLocation(),
  },
));
// void main() => runApp(MaterialApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ));
//   }
// }
