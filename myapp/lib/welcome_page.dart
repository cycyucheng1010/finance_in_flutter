import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: w,
            height: h * 0.4,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('day.jpg'), fit: BoxFit.cover)),
            child: Column(
              children: [
                SizedBox(height: h * 0.16),
                CircleAvatar(
                  backgroundColor: Colors.white70,
                  radius: 60,
                  backgroundImage: AssetImage("night.jpg"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Container(
            width: w,
            margin: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
              "Welcome",
              style:TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color:Colors.black54
              ),
            ),
            Text(
              "a@a.com",
              style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
              ],
            ),
          ),
          SizedBox(height: 100,),
          Container(
            width: w * 0.5,
            height: h * 0.08,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage('night.jpg'), fit: BoxFit.cover)),
            child: Center(
              child: Text(
                "Sign out",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
  
        
        ],
      ),
    );
  }
}
