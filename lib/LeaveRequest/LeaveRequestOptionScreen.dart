import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ApplyLeaveRequestScreen.dart';
import 'LeaveHistory.dart';
import 'LeaveStatus.dart';


class LeaveRequestOptionScreen extends StatefulWidget {
  const LeaveRequestOptionScreen({Key? key}) : super(key: key);

  @override
  State<LeaveRequestOptionScreen> createState() => _LeaveRequestOptionScreenState();
}

class _LeaveRequestOptionScreenState extends State<LeaveRequestOptionScreen> {
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Hostel Leave Request Screen",textAlign: TextAlign.center,),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment : MainAxisAlignment.center,
            children: [
              MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ApplyLeaveRequestScreen()));
              },
                minWidth: myWidth*0.6,
                height: 60,
                color: Colors.lightBlue[300],
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Text('LEAVE REQUEST',style: TextStyle(letterSpacing: 2,fontWeight: FontWeight.bold,fontSize: 20),),
              ),

              SizedBox(height: myHeight*0.08,),

              MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LeaveStatusScreen()));
              },
                minWidth: myWidth*0.6,
                height: 60,
                color: Colors.lightBlue[300],
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Text('LEAVE STATUS',style: TextStyle(letterSpacing: 2,fontWeight: FontWeight.bold,fontSize: 20)),
              ),

              SizedBox(height: myHeight*0.08,),

              MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LeaveHistory()));
              },
                minWidth: myWidth*0.6,
                height: 60,
                color: Colors.lightBlue[300],
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Text('LEAVE HISTORY',style: TextStyle(letterSpacing: 2,fontWeight: FontWeight.bold,fontSize: 20)),
              ),


            ],

        ),
      ),
    );
  }
}
