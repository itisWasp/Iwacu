import 'package:flutter/material.dart';
import './pages/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.orange.shade900
    ),
    home: Login(),
  ));
}

