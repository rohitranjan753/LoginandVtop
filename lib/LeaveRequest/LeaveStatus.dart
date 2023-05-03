import 'package:flutter/material.dart';

class LeaveStatusScreen extends StatefulWidget {
  const LeaveStatusScreen({Key? key}) : super(key: key);

  @override
  State<LeaveStatusScreen> createState() => _LeaveStatusScreen();
}

List<String> leaveId = [
  'L0762121',
];
List<String> visitPlace = [
  'SEHORE',
];
List<String> reason = [
  'Diwali Vacation',
];
List<String> leaveOptions = [
  'SPECIAL OUTING',
];
List<String> fromDate = [
  '07-MAR-2023 02:30 PM',
];
List<String> toDate = [
  '07-MAR-2023 07:30 PM',
];
List<String> status = [
  'REQUEST APPROVED',
];
List<String> remarks = [
  'Dear Hostel Team, Kindly do the needful. by [ 100424 ] [ SOMA SAHA ]',
];

class _LeaveStatusScreen extends State<LeaveStatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Leave Status",textAlign: TextAlign.center,),
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
                          Flexible(child: Text(status[index],maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.green),),),
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
