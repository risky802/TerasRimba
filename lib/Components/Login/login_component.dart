import 'package:flutter/material.dart';
import 'package:terasrimba/Components/Login/login_form.dart';
import 'package:terasrimba/size_config.dart';
import 'package:terasrimba/utils/constants.dart';

class LoginComponent extends StatefulWidget {
  const LoginComponent({super.key});

  @override
  State<LoginComponent> createState() => _LoginComponentState();
}

class _LoginComponentState extends State<LoginComponent> {
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
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Text(
                  "Selamat Datang",
                  style: headingStyle,
                ),
                SizedBox(height: getProportionateScreenWidth(10)),
                Text(
                  "Masuk ke akun Anda untuk melanjutkan",
                  style: mSubtitleTextStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.06),
                Image.asset(
                  "assets/images/icon.png",
                  height: getProportionateScreenHeight(150),
                  width: getProportionateScreenHeight(150),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.06),
                const SignInForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
