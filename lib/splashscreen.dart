import 'dart:async';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:test/login.dart';

class splashscreen extends StatefulWidget {
  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    _navgatetohome();
  }

  _navgatetohome() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});

    await Navigator.pushReplacement(context as BuildContext,
        MaterialPageRoute(builder: (context) => Login()));
  }

  Widget build(BuildContext context) {
    return Container(
      child: Image.asset("assets/images/Parking.png"),
    );
  }
}
