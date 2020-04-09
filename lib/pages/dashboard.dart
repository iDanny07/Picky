import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  
  
  String text = "Initial Text";
  var currentPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: 
            Text('Picky'),
            centerTitle: true,
            // title: Text(
            //   widget.title,
            //   style: TextStyle(
            //     fontSize: 25,
            //   ),
            // )
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              DrawerHeader(
                child: Text(
                  'Picky Menu',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                ),
              ),
              new Container (
                child: new Column(
                    children: <Widget>[
                      new ListTile(
                        title: Text('One'),
                        leading: new Icon(Icons.info),
                        onTap:(){
                          setState((){
                            Navigator.pushNamed(context, '/bar');
                          });
                        }
                      ),
                      new ListTile(
                          leading: new Icon(Icons.save),
                          onTap:(){
                            setState((){
                              text = "save pressed";
                            });
                          }
                      ),
                      new ListTile(leading: new Icon(Icons.settings),
                          onTap:(){
                            setState((){
                              text = "settings pressed";
                            });
                          }
                      ),
                    ]
                ),
              )
            ],
          ),
        ),
        body: new Center(
        )
    );
  }
}