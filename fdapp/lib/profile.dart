import 'package:flutter/material.dart';
import "./util.dart";
import "Components/testfield.dart";
import "package:flutter/gestures.dart";
import './home.dart';

class info extends StatelessWidget {
  const info({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(188, 218, 35, 135),
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => prof()));
          },
          icon: const Icon(Icons.arrow_back_ios_rounded),
        ),
        title: Text(
          "PROFILE",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/testbg.jpg'),
                fit: BoxFit.cover,
                colorFilter:
                    ColorFilter.mode(Colors.black45, BlendMode.darken)),
          ),
          child: Container(
            child: Column(children: [
              Container(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back),
                ),
              ),
              CircleAvatar(
                  backgroundImage: AssetImage("assets/face.jpg"), radius: 80),
              Center(
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          LabelAndTextFormField(
                              labelText: "Name:     ", defaultText: "ISSAC M"),
                          horizontalSpacing(7),
                          LabelAndTextFormField(
                              labelText: "Email:     ", defaultText: ""),
                          horizontalSpacing(7),
                          LabelAndTextFormField(
                              labelText: "PhoneNo:     ", defaultText: ""),
                          horizontalSpacing(7),
                          LabelAndTextFormField(
                              labelText: "City:     ", defaultText: ""),
                          horizontalSpacing(7),
                          LabelAndTextFormField(
                              labelText: "Organization:     ", defaultText: ""),
                          horizontalSpacing(7),
                          LabelAndTextFormField(
                              labelText: "Age:     ", defaultText: ""),
                          horizontalSpacing(7),
                          LabelAndTextFormField(
                              labelText: "Gender:     ", defaultText: ""),
                          horizontalSpacing(7),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => prof()));
                                },
                                child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.pink,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 40,
                                          vertical: 20,
                                        ),
                                        child: Center(
                                            child: Text("Edit",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ))))),
                              )
                            ],
                          )
                        ],
                      )))
            ]),
          )),
    );
  }
}
