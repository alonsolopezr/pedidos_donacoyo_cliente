import 'package:flutter/material.dart';
import 'package:pedidos_donacoyo_cliente/pages/auth/login_page.dart';
import 'package:pedidos_donacoyo_cliente/pages/auth/signin_page.dart';
import 'package:pedidos_donacoyo_cliente/pages/cart/cart_page.dart';
import 'package:pedidos_donacoyo_cliente/pages/home.dart';
import 'package:pedidos_donacoyo_cliente/pages/splash/splash_page.dart';

final Map<String, WidgetBuilder> routes = {
  SplashPage.routeName: (context) => SplashPage(),
  SignInPage.routeName: (context) => SignInPage(),
  LogInPage.routeName: (context) => LogInPage(),
  HomePage.routeName: (context) => HomePage(),
  CartPage.routeName: (context) => CartPage(),
};
