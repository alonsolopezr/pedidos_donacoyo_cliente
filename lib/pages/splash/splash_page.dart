import 'dart:ui';

import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  static String routeName = "/splash";

  SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/coyotas_donacoyo_banner_old_1.jpg'),
          fit: BoxFit.fill,
        ),
      ),
    ));
  }
}
