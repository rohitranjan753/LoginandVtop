import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class ApplyLeaveRequestScreen extends StatefulWidget {
  const ApplyLeaveRequestScreen({Key? key}) : super(key: key);

  @override
  State<ApplyLeaveRequestScreen> createState() =>
      _ApplyLeaveRequestScreenState();
}

class _ApplyLeaveRequestScreenState extends State<ApplyLeaveRequestScreen> {
  final _formKey = GlobalKey<FormState>();
  String _visitingPlace = '';
  String _reason = '';
  String? _leaveType;
  DateTime? _selectedDate;
  TimeOfDay? _selecetedTime;

  List<String> _leaveOptions = [
    'SPECIAL OUTING',
    'WITH PARENT LEAVE',
    'OFFICIAL LEAVES(GATE/CAMPUS INTERVIEW)',
    'SUMMER VACATION',
    'HOME TOWN',
    'EMERGENCY LEAVE',
    'LOCAL GUARDIAN',
    'OUTING',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Apply leave request"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              children: [
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text("HOD NAME: KANCHAN LATA KASHYAP(100064)",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,letterSpacing: 1),),
                      SizedBox(
                        height: 50,
                      ),
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
                            height: 2,
                            color: Colors.lightBlueAccent,
                          ),
                          hint: Text(
                            "---Select leave type---",
                            style: TextStyle(fontSize: 20, letterSpacing: 5),
                          ),
                          value: _leaveType,
                          onChanged: (newValue) {
                            setState(() {
                              _leaveType = newValue;
                            });
                          },
                          items: _leaveOptions.map((option) {
                            return DropdownMenuItem(
                              child: Text(
                                option,
                                style: TextStyle(
                                    fontSize: 15, letterSpacing: 1),
                              ),
                              value: option,
                            );
                          }).toList(),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _visitingPlace = value;
                          });
                        },
                        decoration: InputDecoration(
                          labelText: "Visiting Place",
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5)),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5)),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Enter Place',
                        ),
                        validator: (value) {
                          if (value!.isEmpty || value == null) {
                            return 'Pleas select visiting place';
                          } else {
                            return null;
                          }
                        },
                      ),

                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _reason = value;
                          });
                        },
                        decoration: InputDecoration(
                          labelText: 'Reason',
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5)),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5)),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Enter Reason',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Fill the reason';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Align(
                  child: Text(
                    "From: ",
                    style: TextStyle(fontSize: 20),
                  ),
                  alignment: Alignment.topLeft,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(DateFormat('MMMM d, yyyy - hh:mm a')
                        .format(selectedFromDate)),
                    TextButton(
                      onPressed: () async {
                        await _selectDate(context);
                        await _selectTime(context);
                      },
                      child: Text(
                        'Choose Date',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 20,),
                Align(
                  child: Text(
                    "To: ",
                    style: TextStyle(fontSize: 20),
                  ),
                  alignment: Alignment.topLeft,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(DateFormat('MMMM d, yyyy - hh:mm a')
                        .format(selectedToDate)),
                    TextButton(
                      onPressed: () async {
                        await _selectToDate(context);
                        await _selectToTime(context);
                      },
                      child: Text(
                        'Choose Date',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),

                  ],
                ),

                SizedBox(
                  height: 10,
                ),
                SizedBox(height: 20),
                MaterialButton(
                  onPressed: () {
                    if (_leaveType == null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Choose Leave type')),
                      );
                    } else if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }
                  },
                  minWidth: 250,
                  height: 60,
                  color: Colors.blue[400],
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  child: Text(
                    'SUBMIT LEAVE',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18,letterSpacing: 4),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  DateTime selectedFromDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null && pickedDate != selectedFromDate) {
      setState(() {
        selectedFromDate = pickedDate;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedFromTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedFromTime != null) {
      setState(() {
        selectedFromDate = DateTime(
          selectedFromDate.year,
          selectedFromDate.month,
          selectedFromDate.day,
          pickedFromTime.hour,
          pickedFromTime.minute,
        );
      });
    }
  }

  DateTime selectedToDate = DateTime.now();
  Future<void> _selectToDate(BuildContext context) async {
    final DateTime? pickedtoDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (pickedtoDate != null && pickedtoDate != selectedToDate) {
      setState(() {
        selectedToDate = pickedtoDate;
      });
    }
  }

  Future<void> _selectToTime(BuildContext context) async {
    final TimeOfDay? pickedToTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedToTime != null) {
      setState(() {
        selectedFromDate = DateTime(
          selectedFromDate.year,
          selectedFromDate.month,
          selectedFromDate.day,
          pickedToTime.hour,
          pickedToTime.minute,
        );
      });
    }
  }
}
