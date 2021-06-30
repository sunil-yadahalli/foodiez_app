import 'package:flutter/material.dart';
import 'package:foodiez_app/LoginPage/LoginPage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    ),
  );
}
