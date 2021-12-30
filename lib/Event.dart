import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'card_timetable.dart';

class Event extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        
      ),
      body: Center(
        child: 
        Column(
        
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
               new TextField(
                 textAlign: TextAlign.center,
                 
               ),
               new RaisedButton(
                 child: new Text("voila"),
                 

               )
               



            // Text('Click button to back to Main Page'),
            // RaisedButton(
            //   textColor: Colors.white,
            //   color: Colors.redAccent,
            //   child: Text('Back to Main Page'),
            //   onPressed: () {
            //     Navigator.pop(context);
            //   },
            // )
          ],
        ),
      ),
    );
  }
}