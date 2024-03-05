import 'package:admin/presentations/Screen/Dashboard/datatable.dart';
import 'package:admin/presentations/Screen/search/searchStudentText.dart';
import 'package:admin/presentations/widgets/search_button.dart';
import 'package:flutter/material.dart';

class ViewDetailsOfStudent extends StatefulWidget {
  ViewDetailsOfStudent({super.key});

  @override
  State<ViewDetailsOfStudent> createState() => _ViewDetailsOfStudentState();
}

class _ViewDetailsOfStudentState extends State<ViewDetailsOfStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [_buildSectionTitle(), _buildStudentDetails()],
      ),
    );
  }

  Widget _buildSectionTitle() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/banner.png",
          scale: 2.5,
        ),
        SearchButton(
          label: "Search students",
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => SearchScreenStudentText()));
          },
        )
      ],
    );
  }

  Widget _buildStudentDetails() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: DataTableStudent(),
    );
  }
}
