// import 'package:http/http.dart';
// import 'dart:convert';
// import 'package:intl/intl.dart';

// class WorldTime {
//   late String msg;
//   late String code;
//   late String time;
//   late String url;
//   bool isDaytime;
//   WorldTime({required this.msg, required this.code, required this.url})
//       : isDaytime = true;

//   get http => null;

//   Future<void> getTime() async {
//     try {
//       // Response response = await get('http://172.104.66.29:9487/' as Uri);
//       // Map data = jsonDecode(response.body);
//       // String apiUrl = 'http://172.104.66.29:9487/$url';
//       // Response response = await get(Uri.parse(apiUrl));
//       var url = 'http://172.104.66.29:9487';
//       // ignore: unused_local_variable
//       var response = await http.get(url as Uri);

//       Map<String, dynamic> data = jsonDecode(response.body);

//       //get properties trom data
//       String datetime = data['datetime'];
//       String offset = data['utc_offset'].substring(1, 3);
//       //print(datetime);
//       //print(offset);

//       //create DateTime object
//       DateTime now = DateTime.parse(datetime);
//       now = now.add(Duration(hours: int.parse(offset)));

//       isDaytime = now.hour > 6 && now.hour < 20 ? true : false;
//       this.time = DateFormat.jm().format(now);
//     } catch (e) {
//       print('caught error:$e');
//       time = 'could not get time';
//     }
//   }
// }
