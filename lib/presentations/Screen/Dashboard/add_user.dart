import 'package:admin/presentations/Screen/Dashboard/add_student.dart';
import 'package:admin/presentations/Screen/Dashboard/add_teacher.dart';
import 'package:flutter/material.dart';

class AddUserScreen extends StatelessWidget {
  AddUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image.asset(
          "assets/images/banner.png",
          scale: 2,
        ),
        SizedBox(
          height: 50,
        ),
        Center(
            child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => AddStudent()));
                },
                child: AddUserButton(label: "Add Student"))),
        SizedBox(
          height: 20,
        ),
        InkWell(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => AddTeacher())),
            child: AddUserButton(label: "Add Teacher"))
      ],
    ));
  }
}

class AddUserButton extends StatelessWidget {
  final String label;

  AddUserButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(blurRadius: 6.0)],
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Color.fromARGB(255, 13, 15, 119)),
            color: Color.fromARGB(255, 13, 15, 119)),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
