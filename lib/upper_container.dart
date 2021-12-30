import 'card_timetable.dart';
import 'package:flutter/material.dart';

class BookShelf extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        color: Colors.blue[900],
        child: new Column(
          
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            new Container(
              margin: EdgeInsets.fromLTRB(0, 0, 250, 100),
              child: new Text("FLEXITT",
              style: TextStyle(
                    
                      fontSize: 25.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
              ),
            ),

                      




                  
  
  
           
            new Container(
              margin: const EdgeInsets.fromLTRB(250, 0, 0, 20),
              child: new Text('MONDAY',
                  style: const TextStyle(
                    
                      fontSize: 25.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ),
            new Container(
              height: 600.0,
              width: double.infinity,
              decoration: new BoxDecoration(

                  gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment(1.2, .2), // 10% of the width, so there are ten blinds.
      colors: [Colors.pink, const Color(0xFF999999)], // whitish to gray
      tileMode: TileMode.repeated, // repeats the gradient over the canvas
    ),




                borderRadius: new BorderRadius.only(topLeft: const Radius.circular(30.0), topRight: const Radius.circular(30.0)),
              //  color: Colors.white,
              ),
              child: new DefaultTabController(
                length: 3,
                child: new Column(
                  children: <Widget>[
                   
                    new BookRow(),
                  ],
                ),
              ),
              
            ),
            
          ],
        ),
      ),
    );
  }
}
