import 'package:flutter/material.dart';
import 'package:terasrimba/Components/Register/register_component.dart';
import 'package:terasrimba/size_config.dart';

class RegisterScreen extends StatelessWidget {
  static const String routeName = "/register";

  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar Akun"),
        centerTitle: true,
      ),
      body: const RegisterComponent(),
    );
  }
}
