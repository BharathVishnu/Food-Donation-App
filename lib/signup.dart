import 'package:fdapp/signin.dart';
import 'package:flutter/material.dart';
import 'package:fdapp/util.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(children: <Widget>[
      Container(
          height: size.height * .3,
          decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: Image.asset("assets/header.png").image))),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 56),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("SIGN UP",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  //   fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                )),
            verticalSpacing(40),
            Container(
              height: 50,
              width: 278,
              child: TextFormField(
                decoration: InputDecoration(
                  label: Text("Name"),
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              height: 50,
              width: 278,
              child: TextFormField(
                decoration: InputDecoration(
                  label: Text("Email"),
                  border: InputBorder.none,
                ),
              ),
            ),
            verticalSpacing(30),
            Container(
              height: 50,
              width: 278,
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  label: Text("Password"),
                  border: InputBorder.none,
                ),
              ),
            ),
            verticalSpacing(30),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => SignIn()));
              },
              child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff0F0F10),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 70,
                        vertical: 13,
                      ),
                      child: Center(
                          child: Text("SIGN UP",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ))))),
            ),
          ],
        ),
      ),
      Container(
          height: size.height * .9,
          decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.bottomCenter,
                  image: Image.network("assets/footer.png").image)))
    ]));
  }
}
