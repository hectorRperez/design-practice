
import 'package:flutter/material.dart';
import 'dart:math' as math;

//Mis dependencias
import 'package:diseno_app/src/componets/components_third/buildBottomNavigationBar.dart';

class ThirdDesing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _fondoApp(),
        ],
      ),
      bottomNavigationBar:BuildBottomNavigation(),
    );
  }

  Widget _fondoApp() {
    final fondo = Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(49, 45, 198, 1.0),
            Color.fromRGBO(19, 13, 13, 1.0),
          ],
        ),
      ),
    );

    return Stack(
      children: [
        fondo,
        pinkBox(),
        itemOnPinkBox(),
      ],
    );
  }

  Container itemOnPinkBox() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Classify transaction',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'In aliquip excepteur et aliqua sit eiusmod \ntempor.',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 5.0,
                ),
                _listItems()
              ],
            ),
          ),
        ),
      );
  }

  Widget pinkBox() {
    return Positioned(
        top: -85.0,
        child: Transform.rotate(
          angle: math.pi / 4.0,
          child: Container(
            height: 300.0,
            width: 300.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(255, 128, 175, 1.0),
                  Color.fromRGBO(242, 30, 110, 1.0),
                ],
              ),
            ),
          ),
        ),
      );
  }

  Widget _listItems() {
    return Table(
      children: [
        TableRow(children: [
          _listTableRow(info: 'General', iconData: Icons.settings, color: Colors.blue),
          _listTableRow(info: 'Transport', iconData: Icons.bus_alert, color: Colors.purple),
        ]),
        TableRow(children: [
          _listTableRow(info: 'General', iconData: Icons.settings,color: Colors.pink),
          _listTableRow(info: 'Transport', iconData: Icons.bus_alert,color: Colors.orange),
        ]),
        TableRow(children: [
          _listTableRow(info: 'General', iconData: Icons.settings,color: Colors.white),
          _listTableRow(info: 'Transport', iconData: Icons.bus_alert,color: Colors.blue),
        ]),
        TableRow(children: [
          _listTableRow(info: 'General', iconData: Icons.settings,color: Colors.yellow),
          _listTableRow(info: 'Transport', iconData: Icons.bus_alert,color: Colors.red),
        ]),
      ],
    );
  }

  Widget _listTableRow({IconData iconData, String info, Color color}) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            size: 50,
            color: color,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            info,
            style: TextStyle(
              color: color,
            ),
          )
        ],
      ),
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      width: 80.0,
      height: 140.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(73, 71, 167, 0.9),
              Color.fromRGBO(67, 54, 95, 0.9)
            ]),
      ),
    );
  }
}
