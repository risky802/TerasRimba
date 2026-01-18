import 'package:flutter/material.dart';
import 'package:terasrimba/Components/Login/login_component.dart';
import 'package:terasrimba/size_config.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = "/login";

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: LoginComponent(),
    );
  }
}
