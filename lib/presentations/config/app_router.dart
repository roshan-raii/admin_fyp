import 'package:admin/presentations/Screen/Dashboard/Dashboard.dart';
import 'package:admin/presentations/Screen/Faculty/add_and_view_faculty.dart';
import 'package:admin/presentations/Screen/Dashboard/add_user.dart';
import 'package:admin/presentations/Screen/Year/add_and_view_year.dart';
import 'package:admin/presentations/Screen/Dashboard/home.dart';
import 'package:admin/presentations/Screen/Dashboard/module.dart';
import 'package:admin/presentations/Screen/Dashboard/notifications.dart';
import 'package:admin/presentations/Screen/Dashboard/routine.dart';
import 'package:admin/presentations/Screen/Dashboard/view_details.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route routeSettings(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => Dashboard());

      case "/dashboard":
        return MaterialPageRoute(builder: (_) => Dashboard());
      case "/home":
        return MaterialPageRoute(builder: (_) => Home());
      case "/addUserScreen":
        return MaterialPageRoute(builder: (_) => AddUserScreen());
      case "/viewDetails":
        return MaterialPageRoute(builder: (_) => ViewDetails());
      case "/notificationScreen":
        return MaterialPageRoute(builder: (_) => NotificationScreen());
      case "/routineScreen":
        return MaterialPageRoute(builder: (_) => Routinescreen());
      case "/moduleScreen":
        return MaterialPageRoute(builder: (_) => ModuleScreen());
      case "/addFaculty":
        return MaterialPageRoute(builder: (_) => AddFaculty());
      case "/addYear":
        return MaterialPageRoute(builder: (_) => AddYear());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [Text("No Route named ${settings.name} found")],
                  ),
                ));
    }
  }
}
