import 'package:flutter/material.dart';
import 'package:frist_project_masour/layout/home_layout.dart';
import 'package:frist_project_masour/modules/bmi/bmi_screen.dart';
import 'package:frist_project_masour/modules/login/login_screen.dart';
import 'package:frist_project_masour/modules/massenger/massenger_screen.dart';




void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeLayout(),
    );

  }
}
