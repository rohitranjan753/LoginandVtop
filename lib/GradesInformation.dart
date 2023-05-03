import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ExamMainScreen.dart';

class GradesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExamScreen()),
                );
              },
            );
          },
        ),
        backgroundColor: Colors.blue[300],
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
        height: 500,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 4,
                  // offset: Offset(-4, 4), // Shadow position
                ),
              ],
              image: DecorationImage(
                image: AssetImage("assets/background1.jpg"),
                fit: BoxFit.cover,
                colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.9), BlendMode.dstATop),
                alignment: Alignment.center,
              ),
              border: Border.all(
                color: Colors.transparent,
              ),
              borderRadius: BorderRadius.all(Radius.circular(60)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60),
                          bottomRight: Radius.circular(0),
                          bottomLeft: Radius.circular(0)),
                    ),
                    child: Container(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Text(
                            "Grades Information",
                            style: TextStyle(
                                letterSpacing: 1,
                                fontSize: 37.0,
                                fontFamily: 'Elsie',
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                      height: 110,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/topcard6.jpg"),
                            fit: BoxFit.cover,
                            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.dstATop),
                            alignment: Alignment.center,
                          )
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(0),
                          bottomRight: Radius.circular(60),
                          bottomLeft: Radius.circular(60)),
                    ),
                    child: Container(
                      height: 320,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "GRADE",
                                  style: TextStyle(
                                      letterSpacing: 1,
                                      fontSize: 30.0,
                                      fontFamily: 'Elsie',
                                      fontWeight: FontWeight.normal),
                                ),
                                Text("POINT",
                                  style: TextStyle(
                                      letterSpacing: 1,
                                      fontSize: 30.0,
                                      fontFamily: 'Elsie',
                                      fontWeight: FontWeight.normal),),
                              ],
                            ),
                            Divider(height: 10,thickness: 1.5,color: Colors.black,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  " S",
                                  style: TextStyle(
                                      letterSpacing: 1,
                                      fontSize: 25.0,
                                      fontFamily: 'Elsie',
                                      fontWeight: FontWeight.normal),
                                ),
                                Text("10",
                                  style: TextStyle(
                                      letterSpacing: 1,
                                      fontSize: 25.0,
                                      fontFamily: 'Elsie',
                                      fontWeight: FontWeight.normal),),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "A",
                                  style: TextStyle(
                                      letterSpacing: 1,
                                      fontSize: 25.0,
                                      fontFamily: 'Elsie',
                                      fontWeight: FontWeight.normal),
                                ),
                                Text("9",
                                  style: TextStyle(
                                      letterSpacing: 1,
                                      fontSize: 25.0,
                                      fontFamily: 'Elsie',
                                      fontWeight: FontWeight.normal),),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "B",
                                  style: TextStyle(
                                      letterSpacing: 1,
                                      fontSize: 25.0,
                                      fontFamily: 'Elsie',
                                      fontWeight: FontWeight.normal),
                                ),
                                Text("8",
                                  style: TextStyle(
                                      letterSpacing: 1,
                                      fontSize: 25.0,
                                      fontFamily: 'Elsie',
                                      fontWeight: FontWeight.normal),),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "C",
                                  style: TextStyle(
                                      letterSpacing: 1,
                                      fontSize: 25.0,
                                      fontFamily: 'Elsie',
                                      fontWeight: FontWeight.normal),
                                ),
                                Text("7",
                                  style: TextStyle(
                                      letterSpacing: 1,
                                      fontSize: 25.0,
                                      fontFamily: 'Elsie',
                                      fontWeight: FontWeight.normal),),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "D",
                                  style: TextStyle(
                                      letterSpacing: 1,
                                      fontSize: 25.0,
                                      fontFamily: 'Elsie',
                                      fontWeight: FontWeight.normal),
                                ),
                                Text("6",
                                  style: TextStyle(
                                      letterSpacing: 1,
                                      fontSize: 25.0,
                                      fontFamily: 'Elsie',
                                      fontWeight: FontWeight.normal),),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "E",
                                  style: TextStyle(
                                      letterSpacing: 1,
                                      fontSize: 25.0,
                                      fontFamily: 'Elsie',
                                      fontWeight: FontWeight.normal),
                                ),
                                Text("5",
                                  style: TextStyle(
                                      letterSpacing: 1,
                                      fontSize: 25.0,
                                      fontFamily: 'Elsie',
                                      fontWeight: FontWeight.normal),),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "F",
                                  style: TextStyle(
                                      letterSpacing: 1,
                                      fontSize: 25.0,
                                      fontFamily: 'Elsie',
                                      fontWeight: FontWeight.normal),
                                ),
                                Text("0",
                                  style: TextStyle(
                                      letterSpacing: 1,
                                      fontSize: 25.0,
                                      fontFamily: 'Elsie',
                                      fontWeight: FontWeight.normal),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
