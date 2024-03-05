import 'package:admin/presentations/Screen/Dashboard/datatable.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/banner.png",
                scale: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                      child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 5,
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.people_alt_sharp,
                              size: 40,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Total No. of students",
                              textScaler: TextScaler.linear(1.7),
                            ),
                            Text(
                              "234",
                              textScaler: TextScaler.linear(1.7),
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 5,
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.people_alt_sharp,
                                size: 40,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Total No. of Teachers",
                                textScaler: TextScaler.linear(1.7),
                              ),
                              Text(
                                "19",
                                textScaler: TextScaler.linear(1.7),
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "STUDENTS DETAILS",
                    style: TextStyle(),
                    textScaler: TextScaler.linear(2),
                  ),
                ],
              ),
              DataTableStudent(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "TEACHERS DETAILS",
                    style: TextStyle(),
                    textScaler: TextScaler.linear(2),
                  ),
                ],
              ),
              DataTableTeacher()
            ],
          ),
        ),
      ),
    );
  }
}
