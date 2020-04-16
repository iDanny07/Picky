import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  final int value;

  AccountPage({this.value = 0});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Account",
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(
          child: Column(
            children: <Widget>[
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                  child: CircleAvatar(
                    backgroundColor: Colors.black54,
                    radius: 100,
                  ),
                ),
              ),
              Text(
                'USERNAME',
                style: TextStyle(
                  color: Colors.deepPurple[200],
                  letterSpacing: 1,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.black54,
                padding: EdgeInsets.fromLTRB(150, 10, 150, 10),
                child: Text(
                  'iDanny',
                ),
              ),
              Divider(
                height: 50,
                color: Colors.white,
              ),
              Text(
                'EMAIL',
                style: TextStyle(
                  color: Colors.deepPurple[200],
                  letterSpacing: 1,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  color: Colors.black54,
                  //TODO For some reason this keeps making content smaller
                  padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
                  child: Text(
                    'idanny@gmail.com',
                    style: TextStyle(),
                  )),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: RaisedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.cancel),
                      label: Text('Logout')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
