import 'package:dr_doc/Constants/Colors.dart';
import 'package:dr_doc/Constants/DoctorList.dart';
import 'package:dr_doc/Screens/DoctorPage/DoctorPage.dart';
import 'package:flutter/material.dart';

import 'Screens/HomePage/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: createMaterialColor(
          kPrimaryColor,
        ),
      ),
      home: HomePage(),
    );
  }
}
