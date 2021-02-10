import 'package:flutter/material.dart';

class BuildBottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color.fromRGBO(67, 54, 95, 0.9),
      items: [
        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.badge,color: Color.fromRGBO(242, 30, 110, 1.0),)
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.stacked_line_chart,color: Colors.grey,)
          
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.people,color: Colors.grey,)
        ),
      ],
    );
  }
}