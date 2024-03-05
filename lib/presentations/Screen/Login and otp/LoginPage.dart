import 'package:admin/presentations/widgets/button.dart';
import 'package:admin/presentations/widgets/textfield.dart';
import 'package:admin/presentations/widgets/toogle_button.dart';
import 'package:admin/presentations/Screen/Dashboard/Dashboard.dart';
import 'package:admin/presentations/Screen/Login%20and%20otp/otp_emailscreen.dart';
import "package:admin/Services/validation_service.dart";
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //text editing controllers
  final emailTextController = TextEditingController();

  final passwordTextController = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Scaffold(
          body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/banner.png",
                        height: 100,
                      ),
                    ],
                  ),
                  Text(
                    "Login",
                    style: GoogleFonts.lato(
                      fontSize: 48,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Email Address",
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w600, fontSize: 15),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  MyTextField(
                    controller: emailTextController,
                    label: 'you@example.com',
                    prefixIcon: Icon(Icons.email),
                    validator: ValidationService.validateEmail,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Password",
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w600, fontSize: 15),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  // MyTextField(
                  //   controller: passwordTextController,
                  //   label: 'Enter 6 character or more',
                  //   obscureText: true,
                  //   prefixIcon:  Icon(Icons.lock),
                  //   validator: ValidationService.validatePassword,
                  // ),
                  PasswordField(passController: passwordTextController),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => OtpEmailPage()));
                        },
                        child: Text("Forgot Password?",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Color.fromARGB(255, 47, 14, 105))),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  InkWell(
                    onTap: () {
                      if (_formkey.currentState!.validate()) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => Dashboard()));
                      }
                    },
                    child: SizedBox(
                      height: 50,
                      child: MyButton(
                        color: Color.fromARGB(255, 47, 14, 105),
                        text: "LOGIN",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(children: [
            Container(
                width: 800,
                child: Image.asset("assets/images/login_image.png")),
          ])
        ],
      )),
    );
  }
}
