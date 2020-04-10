import 'package:flutter/material.dart';

class PickyListPage extends StatefulWidget {
  @override
  _PickyListPageState createState() => _PickyListPageState();
}

class _PickyListPageState extends State<PickyListPage> {


  
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