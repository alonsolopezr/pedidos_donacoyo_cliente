import 'package:flutter/material.dart';
import 'package:pedidos_donacoyo_cliente/pages/AwesomeCarouselPage.dart';

import 'package:pedidos_donacoyo_cliente/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //shoppingCart product counter
  static int productCounter = 0;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coyotas "Doña Coyo"',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      //home: HomePage(title: 'Pedidos Doña Coyo'),
      home: AwesomeCarousel(),
    );
  }
}
