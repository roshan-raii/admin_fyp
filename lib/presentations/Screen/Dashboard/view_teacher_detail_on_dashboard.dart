import 'package:flutter/material.dart';

class ViewTeacher extends StatelessWidget {
  const ViewTeacher({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const Row(
              children: [
                Expanded(
                  child: Card(
                    color: Color.fromARGB(255, 21, 7, 103),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Teacher Profile",
                            textScaler: TextScaler.linear(3),
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          Text(
                            "View Profile",
                            textScaler: TextScaler.linear(2),
                            style: TextStyle(
                                fontWeight: FontWeight.w100,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 100,
                      backgroundImage: AssetImage("assets/images/profile.png"),
                    ),
                    Text(
                      "Ronal Rai",
                      textScaler: TextScaler.linear(2),
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    )
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade500),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Personal details",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Name:",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          Text("Ronal Rai"),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Date of birth:",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          Text("20th June 2003"),
                          SizedBox(
                            height: 9,
                          ),
                          Text(
                            "Gender:",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          Text("Male"),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Contact Number:",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          Text("9829337338"),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Email Address:",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          Text("ronal@gmail.com"),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Address:",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          Text("Dharan-17, Sunsari"),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade500),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Professional details",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Teacher id:",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          Text("12"),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Faculty:",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          Text("Bsc(hons) Computing"),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Module:",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          Text("Java, Python"),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Join date:",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          Text("2022"),
                          SizedBox(
                            height: 9,
                          ),
                          Text(
                            "College mail:",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          Text("np05cp4s220045@iic.edu.np"),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Present days (in Year):",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          Text("223 days"),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
