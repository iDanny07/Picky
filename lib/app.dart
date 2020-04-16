import 'package:flutter/material.dart';
import 'package:picky/pages/pickyList_page.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> {
  bool isMainPageBody = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Picky'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Picky Menu',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.yellow[800],
              ),
            ),
            Container(
              child: Column(children: <Widget>[
                ListTile(
                    title: Text('Login'),
                    leading: Icon(Icons.edit),
                    onTap: () {
                      setState(() {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, '/loginPage');
                      });
                    }),
                ListTile(
                    title: Text('Account'),
                    leading: Icon(Icons.person),
                    onTap: () {
                      setState(() {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, '/accountPage');
                      });
                    }),
                ListTile(
                    title: Text('Create Picky List'),
                    leading: Icon(Icons.plus_one),
                    onTap: () {
                      setState(() {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, '/createPickyListPage');
                      });
                    }),
                ListTile(
                    title: Text('Current Picky List'),
                    leading: Icon(Icons.list),
                    onTap: () {
                      setState(() {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, '/pickyListPage');
                      });
                    }),
                ListTile(
                    title: Text('History'),
                    leading: Icon(Icons.book),
                    onTap: () {
                      setState(() {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, '/historyPage');
                      });
                    }),
              ]),
            )
          ],
        ),
      ),
      body: PickyListPage(isMainPageBody),
    );
  }
}
