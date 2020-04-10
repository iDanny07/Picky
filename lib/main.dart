import 'package:flutter/material.dart';
import 'package:picky/pages/account_page.dart';
import 'package:picky/pages/login_page.dart';
import 'package:picky/pages/createPickyList_page.dart';
import 'package:picky/pages/history_page.dart';
import 'package:picky/pages/pickyList_page.dart';


import 'app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.deepPurple[800],
        accentColor: Colors.yellow[800],
        buttonColor: Colors.deepPurple[700],
      ),
      home: App(),
      routes: {
        '/accountPage': (context) => AccountPage(),
        '/loginPage': (context) => LoginPage(),
        '/createPickyListPage': (context) => CreatePickyListPage(),
        '/historyPage': (context) => HistoryPage(),
        '/pickyListPage': (context) => PickyListPage(),
      },
    );
  }
}
