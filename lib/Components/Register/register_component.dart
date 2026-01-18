import 'package:flutter/material.dart';
import 'package:terasrimba/Components/Register/register_form.dart';
import 'package:terasrimba/size_config.dart';
import 'package:terasrimba/utils/constants.dart';

class RegisterComponent extends StatefulWidget {
  const RegisterComponent({super.key});

  @override
  State<RegisterComponent> createState() => _RegisterComponentState();
}

class _RegisterComponentState extends State<RegisterComponent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "Buat Akun Baru",
                  style: headingStyle,
                ),
                SizedBox(height: getProportionateScreenWidth(10)),
                Text(
                  "Daftar untuk melanjutkan ke Teras Rimba",
                  style: mSubtitleTextStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.06),
                const RegisterForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
