import 'package:flutter/material.dart';
import 'package:gsg_project/project_1/bmi_calculator.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: BMI(),
   );
  }

}
