import 'dart:async';

import 'package:flutter/material.dart';

import 'main.dart';

class splashScreen extends StatefulWidget {
  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return MyApp_page();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text('Splash Screen',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600))),
      ),
      body:  Container(
          decoration:const  BoxDecoration(
              gradient: RadialGradient(colors: [
            Color(0xff37ecba),
            Color(0xff72afd3),
          ], stops: [
            0.2,
            200
          ])),
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/Quiz_1.jpg'),
                  radius: 120,
                ),
                SizedBox(height: 20),
                Text(
                  'Welcome to Quiz App !',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
          )
          ),
    );
  }
}
