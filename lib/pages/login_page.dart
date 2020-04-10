import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final int value;

  LoginPage({this.value = 0});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Text('Login Page'),
          ),
      ),
    );
  }
}
