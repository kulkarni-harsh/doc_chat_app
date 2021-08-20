import 'package:dr_doc/Constants/Colors.dart';
import 'package:dr_doc/Constants/Styles.dart';
import 'package:dr_doc/Models/Doctor.dart';
import 'package:dr_doc/Screens/DoctorPage/DoctorPage.dart';
import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final Doctor doctor;
  const DoctorCard({
    Key? key,
    required this.doctor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (c) => DoctorPage(
              doctor: doctor,
            ),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white70,
          boxShadow: [kCardShadow],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(doctor.urlToImage),
            ),
            Spacer(),
            Text(
              doctor.name,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              doctor.profession,
              style: TextStyle(
                color: Colors.black45,
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
