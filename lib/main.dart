import 'package:flutter/material.dart';
import 'package:terasrimba/Screens/Login/login_screen.dart';
import 'package:terasrimba/routes.dart';
import 'package:terasrimba/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Teras Rimba",
      theme: theme(),
      initialRoute: LoginScreen.routeName,
      routes: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
