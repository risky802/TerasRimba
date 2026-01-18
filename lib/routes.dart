import 'package:flutter/material.dart';
import 'package:terasrimba/Screens/Login/LoginSecreens.dart';
import 'package:terasrimba/Screens/Register/Registrasi.dart';

final Map<String, WidgetBuilder> routes = {
  LoginSecreens.routName: (context) => LoginSecreens(),
  RegisterScreen.routName: (context) => RegisterScreen(),
};
