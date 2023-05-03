import 'package:flutter/material.dart';

import 'SelectedSubjects.dart';


class SelectSubject extends StatefulWidget {
  const SelectSubject({Key? key}) : super(key: key);

  @override
  State<SelectSubject> createState() => _SelectSubject();
}

class _SelectSubject extends State<SelectSubject> {
  String? _subjectType;

  List<String> _subjectOptions = [
    'Object Oriented Programing',
    "Operating System",
    "Data Structure & Algorithm",
    "DBMS",
    "Soft Skills",
    "Communicative English",
    "Mathematics",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Subject"),
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
                "---Choose Subject---",
                style: TextStyle(fontSize: 20, letterSpacing: 5),
              ),
              value: _subjectType,
              onChanged: (newValue) {
                setState(() {
                  _subjectType = newValue;
                });
              },
              items: _subjectOptions.map((option) {
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SelectedSubjectScreen()));
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
