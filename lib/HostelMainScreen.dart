import 'package:flutter/material.dart';

import 'LeaveRequest/LeaveRequestOptionScreen.dart';

class HostelScreen extends StatefulWidget{
  @override
  State<HostelScreen> createState() => _HostelScreenState();
}

class _HostelScreenState extends State<HostelScreen> {
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
                    child: Text("Hostel",style: TextStyle(
                        letterSpacing: 2,
                        fontSize: 40.0,fontFamily: 'Elsie',fontWeight: FontWeight.normal),
                      textAlign: TextAlign.center,),
                  ),
                  height: 80.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/hostel2.jpg"),
                        fit: BoxFit.cover,
                        colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.dstATop),
                        alignment: Alignment.center,
                      )
                  ),
                ),
              ),
            ),

            // Leave Request
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
                                child: Text("Leave Request",
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
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LeaveRequestOptionScreen()));
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
                              image: AssetImage("assets/request2.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),),
                      ),),

                  ],
                ),
              ),
            ),

            //Hostel Details (about rooms configuration and details)
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
                                child: Text("Hostel Details",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'MonoRegular',
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),


                              Padding(
                                padding: const EdgeInsets.fromLTRB(155, 28, 0, 0),
                                child: MaterialButton(onPressed: (){},
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
                              image: AssetImage("assets/hostel4.jpg"),
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