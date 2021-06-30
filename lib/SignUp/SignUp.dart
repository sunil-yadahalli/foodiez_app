import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  var isLoading = false;

  void _submit() {
    final isValid = _formKey.currentState.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Stack(
        children: [
          Image.asset(
            'assets/image.jpg',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.black.withOpacity(0.7),
            colorBlendMode: BlendMode.darken,
          ),
          Center(
            child: SingleChildScrollView(
              child: Form(
                child: Card(
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                            ),
                            prefixIcon: Icon(
                              Icons.supervised_user_circle,
                              color: Colors.white,
                            ),
                            hintText: 'Enter Username',
                            hintStyle: TextStyle(color: Colors.white),
                            labelText: 'Username',
                            labelStyle: TextStyle(color: Colors.white),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            alignLabelWithHint: true,
                          ),
                          onFieldSubmitted: (value) {},
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                            ),
                            prefixIcon: Icon(
                              Icons.security,
                              color: Colors.white,
                            ),
                            hintText: 'Enter Password',
                            hintStyle: TextStyle(color: Colors.white),
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.white),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            alignLabelWithHint: true,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                            ),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.white,
                            ),
                            hintText: 'Enter Email',
                            hintStyle: TextStyle(color: Colors.white),
                            labelText: 'Email',
                            labelStyle: TextStyle(color: Colors.white),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            alignLabelWithHint: true,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        // ignore: deprecated_member_use
                        RaisedButton(
                          color: Colors.yellow[700],
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {
                            _submit();
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
