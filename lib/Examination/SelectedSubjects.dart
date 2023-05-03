import 'package:flutter/material.dart';

class SelectedSubjectScreen extends StatefulWidget {
  const SelectedSubjectScreen({Key? key}) : super(key: key);

  @override
  State<SelectedSubjectScreen> createState() => _SelectedSubjectScreenState();
}

class _SelectedSubjectScreenState extends State<SelectedSubjectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Subject Marks",
          textAlign: TextAlign.center,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            SizedBox(height: 40,),
            Container(
              color: Colors.grey[200],
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Row(
                      children: [
                        Text("Sl. No: ",style: TextStyle(fontWeight: FontWeight.bold),),
                        Text("1"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Row(
                      children: [
                        Text("Class. No: ",style: TextStyle(fontWeight: FontWeight.bold),),
                        Text("BL2022231000790"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Row(
                      children: [
                        Text("Course Code: ",style: TextStyle(fontWeight: FontWeight.bold),),
                        Text("MCA1003"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Row(
                      children: [
                        Text("Course Title: ",style: TextStyle(fontWeight: FontWeight.bold),),
                        Text("Object Oriented Programming using Java"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Row(
                      children: [
                        Text("Course Type: ",style: TextStyle(fontWeight: FontWeight.bold),),
                        Text("Lecture and Tutorial ,practical hours only"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Row(
                      children: [
                        Text("Course System: ",style: TextStyle(fontWeight: FontWeight.bold),),
                        Text("CAL"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Row(
                      children: [
                        Text("Faculty: ",style: TextStyle(fontWeight: FontWeight.bold),),
                        Text("KANCHAN LATA KASHYAP"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Row(
                      children: [
                        Text("Slot: ",style: TextStyle(fontWeight: FontWeight.bold),),
                        Text("A11+A12+A13"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Row(
                      children: [
                        Text("Course Mode: ",style: TextStyle(fontWeight: FontWeight.bold),),
                        Text("LTPM"),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 70,),
            Card(
              elevation: 5,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(border: TableBorder.all(
                  color: Colors.grey,
                  width: 1.0,
                  style: BorderStyle.solid,
                  borderRadius: BorderRadius.circular(3)
                ),

                  dividerThickness: 1.0,
                  dataRowHeight: 50.0,
                  columnSpacing: 8.0,
                  horizontalMargin: 16.0,
                  columns: <DataColumn>[
                    DataColumn(
                      label: Text('Sl. No.'),
                      tooltip: 'Sl. No.',
                    ),
                    DataColumn(
                      label: Text('Mark Title'),
                      tooltip: 'Mark Title',
                    ),
                    DataColumn(
                      label: Text('Max. Mark'),
                      tooltip: 'Max. Mark',
                    ),
                    DataColumn(
                      label: Text('Weighted %'),
                      tooltip: 'Weighted %',
                    ),
                    DataColumn(
                      label: Text('Status'),
                      tooltip: 'Status',
                    ),
                    DataColumn(
                      label: Text('Scored Mark'),
                      tooltip: 'Scored Mark',
                    ),
                    DataColumn(
                      label: Text('Weighted Mark'),
                      tooltip: 'Weighted Mark',
                    ),
                    DataColumn(
                      label: Text('Class Average'),
                      tooltip: 'Class Average',
                    ),
                  ],
                  rows: <DataRow>[
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('1')),
                        DataCell(Text('Class Assesment - Tutorial')),
                        DataCell(Text('5')),
                        DataCell(Text('5')),
                        DataCell(Text('Present')),
                        DataCell(Text('5')),
                        DataCell(Text('5')),
                        DataCell(Text('-')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('2')),
                        DataCell(Text('Class Assesment - Group Activity')),
                        DataCell(Text('5')),
                        DataCell(Text('5')),
                        DataCell(Text('Present')),
                        DataCell(Text('4.75')),
                        DataCell(Text('4.75')),
                        DataCell(Text('-')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('3')),
                        DataCell(Text('Lab Assessment - Continuous Assessment')),
                        DataCell(Text('10')),
                        DataCell(Text('10')),
                        DataCell(Text('Present')),
                        DataCell(Text('9.5')),
                        DataCell(Text('9.5')),
                        DataCell(Text('-')),
                      ],
                    ),
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
