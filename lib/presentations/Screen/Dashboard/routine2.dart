import 'package:admin/presentations/Screen/Dashboard/addRoutine.dart';
import 'package:admin/presentations/Screen/Dashboard/datatable.dart';
import 'package:admin/presentations/widgets/button.dart';
import 'package:flutter/material.dart';

class ViewRoutine2 extends StatelessWidget {
  const ViewRoutine2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [_buildSectionTitle(), _buildRoutineSection(context)],
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
        ),
      ],
    );
  }

  Widget _buildRoutineSection(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => addRoutine()));
              },
              child: Center(
                child: SizedBox(
                  width: 170,
                  height: 45,
                  child: MyButton(
                    text: "Add New Routine",
                    color: Color.fromARGB(255, 192, 20, 20),
                  ),
                ),
              ),
            ),
          ],
        ),
        DataTableRoutine2()
      ],
    );
  }
}
