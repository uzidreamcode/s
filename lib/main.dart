import 'package:flutter/material.dart';
import 'package:food_app/pages/HomePage.dart';
import 'package:food_app/pages/StarterPage.dart';
import 'package:food_app/detail.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Roboto'),
    home: StarterPage(),
    routes: {
      Detail.routeName: (ctx) => Detail()
    },
  )
);
