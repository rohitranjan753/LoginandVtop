import 'package:flutter/material.dart';

import 'SelectedSubject.dart';

class ExamMarksScreen extends StatefulWidget {
  const ExamMarksScreen({Key? key}) : super(key: key);

  @override
  State<ExamMarksScreen> createState() => _ExamMarksScreenState();
}

class _ExamMarksScreenState extends State<ExamMarksScreen> {
  String? _examType;

  List<String> _examOptions = [
    'Tri Semester III & VI 2022-23',
    "Winter Inter Semester - II 2022-23",
    "Summer Semester 2022-23",
    "Winter Inter Semester - | 2022-23",
    "Tri Semester II & V 2022-23",
    "INTERIM SEMESTER 2022-23",
    "Winter Semester 2022-23",
    "Tri Semester I & IV 2022-23",
    "Summer Semester - II 2021-22",
    "Summer Semester 2021-22",
    "Fall Semester 2022-23",
    "Winter Inter Semester - II 2021-22",
    "Winter Semester 2021-22",
    "Winter Inter Semester - I 2021-22",
    "Fall Semester 2021-22",
    "INTERIM SEMESTER 2021-22",
    "Winter Semester 2020-21",
    "Inter Session Semester 2020-21",
    "Fall Semester 2020-21",
    "Summer Semester 2020-21",
    "Summer Semester 2019-20",
    "Winter Semester 2019-20",
    "Fall Semester 2019-20",
    "Fall Semester 2018-19",
    "Summer Semester 2018-19",
    "Winter Semester 2017-18",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Semester"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1.0,
              ),
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
            ),
            child: DropdownButton<String>(
              alignment: Alignment.center,
              iconSize: 24.0,
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
              ),
              underline: Container(
                height: 1,
                color: Colors.lightBlueAccent,
              ),
              hint: Text(
                "---Choose Semester---",
                style: TextStyle(fontSize: 20, letterSpacing: 5),
              ),
              value: _examType,
              onChanged: (newValue) {
                setState(() {
                  _examType = newValue;
                });
              },
              items: _examOptions.map((option) {
                return DropdownMenuItem(
                  child: Text(
                    option,
                    style: TextStyle(fontSize: 15, letterSpacing: 1),
                  ),
                  value: option,
                );
              }).toList(),
            ),
          ),
          SizedBox(height: 50,),
          MaterialButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SelectSubject()));
            },
            minWidth: 250,
            height: 50,
            color: Colors.blue[400],
            elevation: 10,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)),
            child: Text(
              'SUBMIT',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18,letterSpacing: 4),
            ),
          ),
        ],
      ),
    );
  }
}
