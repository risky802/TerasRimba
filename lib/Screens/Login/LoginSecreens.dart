import 'package:flutter/material.dart';
import 'package:terasrimba/Components/Login/LoginComponent.dart';
import 'package:terasrimba/size_config.dart';

class LoginSecreens extends StatelessWidget {
  static String routName = "/sing_in";

  const LoginSecreens({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: LoginComponent(),
    );
  }
}
