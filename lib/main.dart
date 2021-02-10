import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//Mis dependencias
import 'package:diseno_app/src/pages/third_desing.dart';
import 'package:diseno_app/src/pages/secod_desing.dart';
import 'package:diseno_app/src/pages/first_desing.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return MaterialApp(
      title: 'Diseño de aplicaciones',
      debugShowCheckedModeBanner: false,
      initialRoute: 'second',
      routes: {
        '/'      : (BuildContext context) => FirstDesing(),
        'second' : (BuildContext context) => SecondDesing(),
        'third'  : (BuildContext context) => ThirdDesing(),
      }

    );
  }
}