import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:rio_driver_ui_screens/onboarding/MyHomePage.dart';

class Onbording extends StatelessWidget {
  const Onbording({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
    home: MyHomePage(),
        );

  }

}

