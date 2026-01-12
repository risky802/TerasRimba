import 'package:flutter/material.dart';
import 'package:terasrimba/size_config.dart';

class RegisterScreen extends StatelessWidget {

  static String routName = "/sing_up";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
    )
  }
}
