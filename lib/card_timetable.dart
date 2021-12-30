import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Event.dart';


class BookRow extends StatelessWidget {
  //   String time;
  //  String item;

  Container MyArticles(String heading, String sub) {
     
    return Container(
      width: 180,
      decoration: BoxDecoration(),
      child: Card(
        color: Colors.blue[300],
        elevation: 6,
        margin: EdgeInsets.all(17),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Wrap(
          children: <Widget>[
            ListTile(
                contentPadding: EdgeInsets.all(8),
                title: Text(
                  heading,
                  textAlign: TextAlign.center,
                  style: new TextStyle(color: Colors.white),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(sub),
                )),
          ],
        ),
      ),
    );
  }

  PageController pageController = new PageController(viewportFraction: 0.85);

  @override
  Widget build(BuildContext context) {
    return new Container(
        height: 600,
        decoration: new BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment(
                  0.3, .6), // 10% of the width, so there are ten blinds.
              colors: [Colors.pink, Colors.pinkAccent], // whitish to gray
              tileMode:
                  TileMode.repeated, // repeats the gradient over the canvas
            ),
            borderRadius: new BorderRadius.circular(30.0),
            color: Colors.white),
        child: Column(
          children: <Widget>[
            new Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  MyArticles("9:30", "check jama bh karna hai!"),
                  MyArticles("heading", "sub"),
                  MyArticles("heading", "sub"),
                  MyArticles("heading", "sub"),
                  MyArticles("heading", "sub"),
                  MyArticles("heading", "sub"),
                ],
              ),
            ),

            new Container(
              color: Colors.black,
              height: 120,
                  width: 280.0,
                   padding: new EdgeInsets.fromLTRB(10.0, 30.0, 10.0, .0),
                  margin: new EdgeInsets.fromLTRB(250, 200, 50, 10),
                  child:   InkWell(
                child: new Container(
                 // color: Colors.green,
                 
                 
                  child: new Column(children: [
                    new Image.asset('assets/images/plus.png',height: 60,width: 60,),
                    // new Text("New Event"),
                  ]),
                ),
                onTap: () {
                  //  show_eventplanner();
                  print("tapped on container");
                  Navigator.of(context).push(
                    MaterialPageRoute<Null>(
                      builder: (BuildContext context) {
                        return new Event();
                      },
                    ),
                  );
                }),
            ),
          
          ],
        ));
  }
}


