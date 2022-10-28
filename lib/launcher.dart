// ignore_for_file: unnecessary_new

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:marketplace/constans.dart';
import 'package:marketplace/users/landingpage.dart' as users;
import 'package:marketplace/users/landingpage.dart';

class LauncherPage extends StatefulWidget {
  @override
  _LauncherPageState createState() => _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
  @override
  void initState() {
    super.initState();
    startLaunching();
  }

  @override
  void dispose() {
    super.dispose();
  }

  startLaunching() async {
    var duration = const Duration(seconds: 8);
    return new Timer(duration, () {
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => LandingPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      // appBar: AppBar(
      //   title: Text('toko Tanaman'),
      // ),
      body: Container(
        color: green,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          "assets/logo.png",
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}
