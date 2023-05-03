import 'package:flutter/material.dart';

class LeaveHistory extends StatefulWidget {
  const LeaveHistory({Key? key}) : super(key: key);

  @override
  State<LeaveHistory> createState() => _LeaveHistoryState();
}

List<String> leaveId = [
  'L0762121',
  'L0757121',
  'L0766732',
  'L0759090',
  'L0730449',
];
List<String> visitPlace = [
  'SEHORE',
  'DELHI',
  'BHOPAL',
  'MUMBAI',
  'INDORE',
];
List<String> reason = [
  'Diwali Vacation',
  'Winter Vacation',
  'Medical Issue',
  'Family Visit',
  'Summer Vacation',
];
List<String> leaveOptions = [
  'SPECIAL OUTING',
  'WITH PARENT LEAVE',
  'OFFICIAL LEAVES(GATE/CAMPUS INTERVIEW)',
  'SUMMER VACATION',
  'HOME TOWN',
  'EMERGENCY LEAVE',
  'LOCAL GUARDIAN',
  'OUTING',
];
List<String> fromDate = [
  '07-MAR-2023 02:30 PM',
  '03-FEB-2023 12:30 PM',
  '13-JAN-2023 07:45 AM',
  '20-DEC-2022 03:00 PM',
  '22-OCT-2022 02:00 PM',
];
List<String> toDate = [
  '07-MAR-2023 07:30 PM',
  '13-FEB-2023 08:45 AM',
  '13-JAN-2023 07:45 PM',
  '03-JAN-2023 07:00 AM',
  '02-NOV-2022 11:00 AM',
];
List<String> status = [
  'REQUEST APPROVED',
  'REQUEST CANCELLED AFTER APPROVAL/REJECTION',
  'REQUEST APPROVED BY PROCTOR & WAITING FOR WARDEN APPROVAL',
  'REQUEST APPROVED BY PROCTOR & WAITING FOR WARDEN APPROVAL',
  'REQUEST APPROVED BY PROCTOR & WAITING FOR WARDEN APPROVAL',
];
List<String> remarks = [
  'Dear Hostel Team, Kindly do the needful. by [ 100424 ] [ SOMA SAHA ]',
  'Dear Hostel Team, Kindly do the needful. by [ 100424 ] [ SOMA SAHA ]',
  'Dear Hostel Team, Kindly do the needful. by [ 100424 ] [ SOMA SAHA ]',
  'Dear Hostel Team, Kindly do the needful. by [ 100424 ] [ SOMA SAHA ]',
  'Dear Hostel Team, Kindly do the needful. by [ 100424 ] [ SOMA SAHA ]',
];

class _LeaveHistoryState extends State<LeaveHistory> {
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Leave History",textAlign: TextAlign.center,),
      ),
      body: Container(
        child: ListView.builder(itemBuilder: (context,index){
          return Card(
            margin: EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            color: Colors.lightBlue[100],
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      children: [
                        Text("Leave Id: ",style: TextStyle(fontWeight: FontWeight.bold),),
                        Text(leaveId[index]),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      children: [
                        Text("Visit Palce: ",style: TextStyle(fontWeight: FontWeight.bold),),
                        Text(visitPlace[index]),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      children: [
                        Text("Reason: ",style: TextStyle(fontWeight: FontWeight.bold),),
                        Text(reason[index]),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      children: [
                        Text("From: ",style: TextStyle(fontWeight: FontWeight.bold),),
                        Text(fromDate[index]),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      children: [
                        Text("To: ",style: TextStyle(fontWeight: FontWeight.bold),),
                        Text(toDate[index]),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      children: [
                        Text("Status: ",style: TextStyle(fontWeight: FontWeight.bold),),
                        Flexible(child: Text(status[index],maxLines: 1,overflow: TextOverflow.ellipsis,)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      children: [
                        Text("Remark: ",style: TextStyle(fontWeight: FontWeight.bold),),
                        Flexible(child: Text(remarks[index],maxLines: 1,overflow: TextOverflow.ellipsis,)),
                      ],
                    ),
                  ),








                ],
              ),
            ),
          );
        },
        itemCount: leaveId.length,),
      )
    );
  }
}
