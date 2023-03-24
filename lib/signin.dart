import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fdapp/util.dart';
import "package:fdapp/signup.dart";
import './prof.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: -40,
                    height: 400,
                    width: width,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/header.png'),
                              fit: BoxFit.fill)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 56),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Sign In",
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
                    Row(mainAxisAlignment: MainAxisAlignment.end, children: []),
                    verticalSpacing(30),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => prof()));
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
                                  child: Text("SIGN IN",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ))))),
                    ),
                    verticalSpacing(40),
                    RichText(
                      text: TextSpan(
                        text: 'Don’t Have an account? ',
                        style: TextStyle(color: Color(0xff0F0F10)),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Sign Up',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignUp()));
                                },
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              )),
                        ],
                      ),
                    )
                  ]),
            ),
            Container(
              height: 400,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: -40,
                    height: 400,
                    width: width,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/footer.png'),
                              fit: BoxFit.fill)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
