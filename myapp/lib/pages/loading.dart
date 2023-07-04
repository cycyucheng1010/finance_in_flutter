import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void gettime() async {
    Response response = await get('http://172.104.66.29:9487/' as Uri);
    Map data = jsonDecode(response.body);

    //get properties trom data
    String datetime = data['datetime'];
    String offset = data['utc_ffset'].substring(1, 3);
    //print(datetime);
    //print(offset);

    //create DateTime object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
    print(now);
  }

  @override
  void initState() {
    super.initState();
    gettime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text('loading screen'));
  }
}
