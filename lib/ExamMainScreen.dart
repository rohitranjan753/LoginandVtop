import 'package:flutter/material.dart';


import 'Examination/ExamMarks.dart';
import 'GradesInformation.dart';

class ExamScreen extends StatefulWidget{
  @override
  State<ExamScreen> createState() => _ExamScreenState();
}

class _ExamScreenState extends State<ExamScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.blue[300],
      ),

      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //Top Card
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Card(
                elevation: 5.0,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(0),topRight: Radius.circular(0),bottomRight: Radius.circular(60),bottomLeft: Radius.circular(60)),
                ),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Text("Examination",style: TextStyle(
                        letterSpacing: 2,
                        fontSize: 40.0,fontFamily: 'Elsie',fontWeight: FontWeight.normal),
                      textAlign: TextAlign.center,),
                  ),
                  height: 80.0,
                  width: MediaQuery.of(context).size.width,
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
            ),

            // Exam Marks
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,

                // width: MediaQuery.of(context).size.width,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      color: Colors.white,
                    ),
                    //TextView
                    Positioned(
                      //blue
                      left: 70,
                      top: 20,
                      // replace with your Card here
                      child: Card(

                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.black12, //<-- SEE HERE
                            ),
                            borderRadius: BorderRadius.circular(20.0)
                        ),
                        elevation: 5,
                        child: Container(

                          width: 275,
                          height: 120,
                          color: Colors.white,
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [

                              Padding(
                                padding: const EdgeInsets.fromLTRB(90, 20, 0, 0),
                                child: Text("Exam Marks",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'MonoRegular',
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),


                              Padding(
                                padding: const EdgeInsets.fromLTRB(155, 28, 0, 0),
                                child: MaterialButton(onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ExamMarksScreen()));
                                },
                                  // elevation: 10.0,
                                  color: Colors.blue,
                                  height: 48,
                                  minWidth: 120,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(0),bottomRight: Radius.circular(20),bottomLeft: Radius.circular(0)),
                                  ),
                                  child: Text("VIEW",
                                    style: TextStyle(
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Aldrich',
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),

                        ),
                      ),
                    ),

                    //ImageView
                    Positioned(
                      top: 5,
                      left: 40,
                      // replace with your image here
                      child: Card(
                        elevation: 10,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.black12, //<-- SEE HERE
                            ),
                            borderRadius: BorderRadius.circular(20.0)
                        ),
                        child: Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/result3.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),),
                      ),),

                  ],
                ),
              ),
            ),

            //Grade Calculator
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,

                // width: MediaQuery.of(context).size.width,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      color: Colors.white,
                    ),
                    //TextView
                    Positioned(
                      //blue
                      left: 70,
                      top: 20,
                      // replace with your Card here
                      child: Card(

                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.black12, //<-- SEE HERE
                            ),
                            borderRadius: BorderRadius.circular(20.0)
                        ),
                        elevation: 5,
                        child: Container(

                          width: 275,
                          height: 120,
                          color: Colors.white,
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [

                              Padding(
                                padding: const EdgeInsets.fromLTRB(90, 20, 0, 0),
                                child: Text("Grade Info",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'MonoRegular',
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),


                              Padding(
                                padding: const EdgeInsets.fromLTRB(155, 28, 0, 0),
                                child: MaterialButton(onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>  GradesScreen()),
                                  );
                                },
                                  // elevation: 10.0,
                                  color: Colors.blue,
                                  height: 48,
                                  minWidth: 120,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(0),bottomRight: Radius.circular(20),bottomLeft: Radius.circular(0)),
                                  ),
                                  child: Text("VIEW",
                                    style: TextStyle(
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Aldrich',
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),

                        ),
                      ),
                    ),

                    //ImageView
                    Positioned(
                      top: 5,
                      left: 40,
                      // replace with your image here
                      child: Card(
                        elevation: 10,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.black12, //<-- SEE HERE
                            ),
                            borderRadius: BorderRadius.circular(20.0)
                        ),
                        child: Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/grades1.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),),
                      ),),

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