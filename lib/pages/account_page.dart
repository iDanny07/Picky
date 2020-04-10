import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  final int value;

  AccountPage({this.value = 0});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account",),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(
          child: Column(
            children: <Widget>[
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: CircleAvatar(
                    backgroundColor: Colors.yellow[200],
                    radius: 100,
                  ),
                ),
              ),
              Text(
                'USERNAME',
                style: TextStyle(
                  color: Colors.deepPurple[800],
                  ),
              ),
              SizedBox(height: 50,),
              Text(
                'iDanny'
              ),
              Divider(
                height: 50,
                color: Colors.white,
                ),
              Text(
                'EMAIL',
                style: TextStyle(
                  color: Colors.deepPurple[800],
                  ),
              ),
              SizedBox(height: 50,),
              Text(
                'idanny@gmail.com'
              ),
              Divider(
                height: 50,
                color: Colors.white,
                ),
              Text(
                'EMAIL',
                style: TextStyle(
                  color: Colors.deepPurple[800],
                  ),
              ),
              SizedBox(height: 50,),
              Text(
                'iDanny'
              ),
              SizedBox(height: 20,),
              RaisedButton.icon(
                onPressed: () {}, 
                icon: Icon(Icons.cancel),
                label: Text('Logout')
              ),
            ],
          ),
        ),
      ),
    );
  }
}
