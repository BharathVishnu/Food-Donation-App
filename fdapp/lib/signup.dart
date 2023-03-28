import 'package:fdapp/signinnew.dart';
import 'package:flutter/material.dart';
import 'package:fdapp/util.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    TextEditingController _passwordController = TextEditingController();
    TextEditingController _confirmPasswordController = TextEditingController();
    final _formKey = GlobalKey<FormState>();

    FormFieldValidator<String> _confirmPasswordValidator = (value) {
      if (value == null || value.isEmpty) {
        return 'Confirm Password is required';
      } else if (value != _passwordController.text) {
        return 'Passwords do not match';
      } else {
        return null;
      }
    };
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/testbg.jpg'),
                  fit: BoxFit.cover,
                  colorFilter:
                      ColorFilter.mode(Colors.black45, BlendMode.darken)),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 56),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GradientText(
                      text: 'SIGN UP',
                      gradient: LinearGradient(colors: [
                        Color.fromARGB(255, 255, 255, 255),
                        Color.fromARGB(255, 88, 88, 88)
                      ]),
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                      )),
                  verticalSpacing(40),
                  Form(
                    child: Column(children: [
                      Container(
                        height: 50,
                        width: 278,
                        child: TextFormField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromARGB(100, 97, 97, 97),
                              label: Text("Name"),
                              icon: Icon(Icons.account_circle_rounded),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              )),
                        ),
                      ),
                      verticalSpacing(30),
                      Container(
                        height: 50,
                        width: 278,
                        child: TextFormField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromARGB(100, 97, 97, 97),
                              icon: Icon(Icons.email),
                              label: Text("Email"),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              )),
                        ),
                      ),
                      verticalSpacing(30),
                      Container(
                        height: 50,
                        width: 278,
                        child: TextFormField(
                          obscureText: true,
                          controller: _passwordController,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromARGB(100, 97, 97, 97),
                              label: Text("Password"),
                              icon: Icon(Icons.password),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              )),
                        ),
                      ),
                      verticalSpacing(30),
                      Container(
                        height: 50,
                        width: 278,
                        child: TextFormField(
                          controller: _confirmPasswordController,
                          obscureText: true,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromARGB(100, 97, 97, 97),
                              label: Text("Confirm Password"),
                              icon: Icon(Icons.password),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              )),
                        ),
                      ),
                      verticalSpacing(30),
                    ]),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => SignIn()));
                      }
                    },
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 70,
                              vertical: 20,
                            ),
                            child: Center(
                                child: Text("Sign Up",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ))))),
                  ),
                ],
              ),
            )));
  }
}
