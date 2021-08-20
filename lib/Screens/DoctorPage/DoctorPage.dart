import 'package:dr_doc/Constants/Doubles.dart';
import 'package:dr_doc/Models/Doctor.dart';
import 'package:dr_doc/Screens/DoctorPage/Delegate.dart';
import 'package:flutter/material.dart';

class DoctorPage extends StatelessWidget {
  final Doctor doctor;

  const DoctorPage({Key? key, required this.doctor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              delegate: Delegate(doctor),
            ),
            SliverPadding(
              padding: padding,
              sliver: SliverToBoxAdapter(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About Doctor",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    doctor.aboutMe,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                    ),
                  ),
                  Text("HAL"),
                  Text("HAL"),
                  Text("HAL"),
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
