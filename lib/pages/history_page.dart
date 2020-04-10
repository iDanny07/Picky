import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  final int value;

  HistoryPage({this.value = 0});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("History"),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Text('History Page'),
          ),
      ),
    );
  }
}
