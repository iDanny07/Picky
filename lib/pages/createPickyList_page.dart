import 'package:flutter/material.dart';

class CreatePickyListPage extends StatefulWidget {
  @override
  _CreatePickyListPageState createState() => _CreatePickyListPageState();
}

class _CreatePickyListPageState extends State<CreatePickyListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Picky List"),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Text('Create Page'),
          ),
      ),
    );
  }
}