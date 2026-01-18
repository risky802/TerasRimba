import 'package:flutter/material.dart';
import 'package:terasrimba/Screens/Login/LoginSecreens.dart';
import 'package:terasrimba/routes.dart';
import 'package:terasrimba/theme.dart';

void main() async {
  runApp(
    MaterialApp(
      title: "Teras Rimba",
      theme: theme(),
      initialRoute: LoginSecreens.routName,
      routes: routes,
    ),
  );
}
