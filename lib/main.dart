import 'package:demo_2/detail.dart';
import 'package:demo_2/home.dart';
import 'package:flutter/material.dart';
import 'cart.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Home(),
        'detail': (context) => Detail(),
        'cart': (context) => Cart(),
      },
    ),
  );
}
