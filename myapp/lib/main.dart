import 'dart:js';

import 'package:flutter/material.dart';
import 'package:myapp/login_page.dart';
// import 'package:myapp/pages/home.dart';
// import 'package:myapp/pages/loading.dart';
// import 'package:myapp/pages/choose_location.dart';
void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes:{
    '/':(context)=>Loginpage(),
    // '/':(context) =>Loading(),
    // '/home':(context) => Home(),
    // '/location':(context) => ChooseLocation(),
  },
));
