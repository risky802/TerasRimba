import 'package:flutter/material.dart';
import 'package:terasrimba/Screens/Login/login_screen.dart';
import 'package:terasrimba/Screens/Register/register_screen.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => const LoginScreen(),
  RegisterScreen.routeName: (context) => const RegisterScreen(),
};
