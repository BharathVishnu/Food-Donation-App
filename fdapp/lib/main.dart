import 'package:fdapp/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import "./signinnew.dart";
import "./splashscreen.dart";
import './profile.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignIn(),
    );
  }
}
