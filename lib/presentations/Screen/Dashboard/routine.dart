import 'package:admin/presentations/Screen/Dashboard/datatable.dart';
import 'package:flutter/material.dart';

class Routinescreen extends StatelessWidget {
  const Routinescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [_buildSectionTitle(), _buildRoutine()],
    ));
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

  Widget _buildRoutine() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DataTableRoutineOne(),
      ],
    );
  }
}
