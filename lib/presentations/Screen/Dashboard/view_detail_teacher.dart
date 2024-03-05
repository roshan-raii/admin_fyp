import 'package:admin/presentations/Screen/Dashboard/datatable.dart';
import 'package:admin/presentations/Screen/search/searchTeacherText.dart';
import 'package:admin/presentations/widgets/search_button.dart';
import 'package:flutter/material.dart';

class ViewDetailsOfTeacher extends StatefulWidget {
  ViewDetailsOfTeacher({super.key});

  @override
  State<ViewDetailsOfTeacher> createState() => _ViewDetailsOfTeacherState();
}

class _ViewDetailsOfTeacherState extends State<ViewDetailsOfTeacher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [_buildSectionTitle(), _buildTeacherDetails()],
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
        SearchButton(
          label: "Search teachers",
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => SearchScreenTeacherText()));
          },
        )
      ],
    );
  }

  Widget _buildTeacherDetails() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: DataTableTeacher(),
    );
  }
}
