// import 'package:flutter/material.dart';
// import 'package:myapp/services/world_time.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';

// class Loading extends StatefulWidget {
//   @override
//   _LoadingState createState() => _LoadingState();
// }

// class _LoadingState extends State<Loading> {
//   void setupWorldTime() async {
//     WorldTime instance =
//         WorldTime(msg: 'Barlin', code: 'germany.png', url: "Europe/Berl");
//     await instance.getTime();
//     Navigator.pushReplacementNamed(context, '/home', arguments: {
//       'msg': instance.msg,
//       'code': instance.code,
//       'time': instance.time,
//       'isDaytime': instance.isDaytime,
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     setupWorldTime();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blue[900],
//       body: Center(
//         child: SpinKitFadingCube(
//           color: Colors.white,
//           size: 80.0,
//         ),
//       ),
//     );
//   }
// }
