import 'package:flutter/material.dart';
import 'package:foodiez_app/HomePage/HomePage.dart';
import 'package:foodiez_app/SignUp/SignUp.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/image.jpg',
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.7),
            colorBlendMode: BlendMode.darken,
          ),
          Center(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Card(
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Username Cannot be empty';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.white,
                                width: 2.0,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.verified_user,
                              color: Colors.white,
                            ),
                            hintText: 'Enter UserName',
                            hintStyle: TextStyle(color: Colors.white),
                            labelText: 'UserName',
                            labelStyle: TextStyle(color: Colors.white),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            alignLabelWithHint: true,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Password cannot be empty';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 2.0)),
                            hintText: 'Enter Password',
                            prefixIcon: Icon(
                              Icons.security,
                              color: Colors.white,
                            ),
                            hintStyle: TextStyle(color: Colors.white),
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.white),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // ignore: deprecated_member_use
                            RaisedButton(
                              child: Text(
                                'SignIn',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              color: Colors.yellow,
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return HomePage();
                                }));
                              },
                            ),
                            // ignore: deprecated_member_use
                            RaisedButton(
                                child: Text(
                                  'SignUp',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                color: Colors.yellow,
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return SignUp();
                                  }));
                                }),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'forgot Password??',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
