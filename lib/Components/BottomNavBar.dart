import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black54,
              size: 30,
            ),
            label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
              color: Colors.black54,
              size: 30,
            ),
            label: "Chat"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today,
              color: Colors.black54,
              size: 30,
            ),
            label: "Schedule"),
      ],
    );
  }
}
