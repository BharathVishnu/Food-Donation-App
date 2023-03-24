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
      appBar: AppBar(title: Text('DONATIONS'), backgroundColor: Colors.red),
    );
  }
}
