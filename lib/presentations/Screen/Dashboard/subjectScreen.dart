import 'package:admin/presentations/widgets/button.dart';
import 'package:admin/presentations/Screen/Dashboard/addSubject.dart';
import 'package:admin/presentations/Screen/Dashboard/datatable.dart';
import 'package:flutter/material.dart';

class SubjectScreen extends StatelessWidget {
  const SubjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [_buildSectionTitle(), _buildYearField(context)],
      ),
    );
  }

  Widget _buildSectionTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          "assets/images/banner.png",
          scale: 2.5,
        )
      ],
    );
  }

  Widget _buildYearField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 120.0, right: 120, top: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => AddSubject()));
                },
                child: Center(
                  child: SizedBox(
                    width: 150,
                    height: 45,
                    child: MyButton(
                      text: "Add Module",
                      color: Color.fromARGB(255, 192, 20, 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
          DataTableSubject()
        ],
      ),
    );
  }
}
