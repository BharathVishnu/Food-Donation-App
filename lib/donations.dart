import 'package:flutter/material.dart';

class donate extends StatefulWidget {
  const donate({super.key});

  @override
  State<donate> createState() => _donateState();
}

class _donateState extends State<donate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/Donate header.png"),
            fit: BoxFit.cover,
          )),
        ));
  }
}
