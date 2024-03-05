import 'package:admin/presentations/widgets/button.dart';
import 'package:admin/presentations/widgets/dateField.dart';
import 'package:admin/presentations/widgets/image_picker.dart';
import 'package:admin/Services/validation_service.dart';
import 'package:flutter/material.dart';
import 'package:admin/presentations/widgets/dropDown.dart';
import 'package:admin/presentations/widgets/textfield.dart';

class AddTeacher extends StatefulWidget {
  const AddTeacher({Key? key}) : super(key: key);

  @override
  State<AddTeacher> createState() => _AddTeacherState();
}

class _AddTeacherState extends State<AddTeacher> {
  final TextEditingController _dateOfBirth = TextEditingController();
  final TextEditingController _dateOfJoin = TextEditingController();
  final TextEditingController _fullName = TextEditingController();
  final TextEditingController _contactNumber = TextEditingController();
  final TextEditingController _emailAddress = TextEditingController();
  final TextEditingController _address = TextEditingController();
  final TextEditingController _teacherQualification = TextEditingController();
  final TextEditingController _teacherExperience = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSectionTitle(),
              SizedBox(
                height: 5,
              ),
              _buildPersonalDetailsSection(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {}
                    },
                    child: Center(
                      child: SizedBox(
                        width: 150,
                        height: 45,
                        child: MyButton(
                          text: "Update",
                          color: Color.fromARGB(255, 20, 34, 192),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
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

  Widget _buildPersonalDetailsSection() {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Personal details:",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 10),
                MyTextField(
                  label: "Full Name",
                  controller: _fullName,
                  validator: ValidationService.validateNonEmptiness,
                ),
                SizedBox(height: 9),
                DateFormField(
                  dateController: _dateOfBirth,
                  label: 'Date of birth',
                ),
                SizedBox(height: 9),
                DropDownGender(),
                SizedBox(height: 9),
                MyTextField(
                  label: "Contact Number",
                  controller: _contactNumber,
                  validator: ValidationService.validateMobileNumber,
                ),
                SizedBox(height: 9), // For alignment with the other column
                MyTextField(
                  label: "Email Address",
                  controller: _emailAddress,
                  validator: ValidationService.validateEmail,
                ),
                SizedBox(height: 9),
                MyTextField(
                  label: "Address",
                  controller: _address,
                  validator: ValidationService.validateNonEmptiness,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Professional details:",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 20),
                MyTextField(
                  label: "Teacher qualification",
                  controller: _teacherQualification,
                  validator: ValidationService.validateNonEmptiness,
                ),
                SizedBox(height: 11),
                MyTextField(
                  label: "Teacher experience",
                  controller: _teacherExperience,
                  validator: ValidationService.validateNonEmptiness,
                ),
                SizedBox(height: 11),
                DateFormField(
                  dateController: _dateOfJoin,
                  label: 'Joining date',
                ),
                SizedBox(height: 13),
                MyTextField(label: "Description (if any)"),
                SizedBox(height: 10),
                MyImagePicker() // For alignment with the other column
              ],
            ),
          ),
        ),
      ],
    );
  }
}
