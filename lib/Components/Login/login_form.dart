import 'package:flutter/material.dart';
import 'package:terasrimba/Components/custom_suffix_icon.dart';
import 'package:terasrimba/Components/default_button.dart';
import 'package:terasrimba/utils/constants.dart';
import 'package:terasrimba/size_config.dart';
import 'package:terasrimba/Screens/Register/register_screen.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  String? username;
  String? password;
  bool remeber = false;

  TextEditingController txtUserName = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  FocusNode focusNodeUsername = FocusNode();
  FocusNode focusNodePassword = FocusNode();

  @override
  void dispose() {
    txtUserName.dispose();
    txtPassword.dispose();
    focusNodeUsername.dispose();
    focusNodePassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildUserName(),
          SizedBox(height: getProportionateScreenWidth(20)),
          buildPassword(),
          SizedBox(height: getProportionateScreenWidth(20)),
          Row(
            children: [
              Checkbox(
                value: remeber,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remeber = value ?? false;
                  });
                },
              ),
              const Expanded(
                child: Text(
                  "Tetap Masuk",
                  style: TextStyle(color: mTitleColor),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // TODO: Navigate to forgot password
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Fitur akan segera tersedia'),
                      duration: Duration(seconds: 1),
                    ),
                  );
                },
                child: const Text(
                  "Lupa Password?",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: getProportionateScreenWidth(30)),
          DefaultButton(
            color: kPrimaryColor,
            text: "MASUK",
            press: () {
              if (_formKey.currentState!.validate()) {
                username = txtUserName.text;
                password = txtPassword.text;
                
                // Hapus focus
                FocusScope.of(context).unfocus();
                
                // TODO: Handle login logic
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Login berhasil'),
                    backgroundColor: kPrimaryColor,
                    duration: Duration(seconds: 2),
                  ),
                );
              }
            },
          ),
          SizedBox(height: getProportionateScreenWidth(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Belum punya akun? ",
                style: TextStyle(color: mSubtitleColor),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, RegisterScreen.routeName);
                },
                child: const Text(
                  "Daftar Sekarang",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  TextFormField buildUserName() {
    return TextFormField(
      controller: txtUserName,
      keyboardType: TextInputType.text,
      style: const TextStyle(
        fontSize: 16,
        color: mTitleColor,
      ),
      focusNode: focusNodeUsername,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Username tidak boleh kosong';
        }
        if (value.length < 3) {
          return 'Username minimal 3 karakter';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Username',
        hintText: 'Masukkan username Anda',
        labelStyle: TextStyle(
          color: focusNodeUsername.hasFocus ? kPrimaryColor : mSubtitleColor,
          fontWeight: FontWeight.w500,
        ),
        hintStyle: const TextStyle(color: mGreyColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/User.svg"),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: mBorderColor, width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: kPrimaryColor, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.red, width: 1.5),
        ),
      ),
    );
  }

  TextFormField buildPassword() {
    return TextFormField(
      controller: txtPassword,
      obscureText: true,
      style: const TextStyle(
        fontSize: 16,
        color: mTitleColor,
      ),
      focusNode: focusNodePassword,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Password tidak boleh kosong';
        }
        if (value.length < 6) {
          return 'Password minimal 6 karakter';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Masukkan password Anda',
        labelStyle: TextStyle(
          color: focusNodePassword.hasFocus ? kPrimaryColor : mSubtitleColor,
          fontWeight: FontWeight.w500,
        ),
        hintStyle: const TextStyle(color: mGreyColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Lock.svg"),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: mBorderColor, width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: kPrimaryColor, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.red, width: 1.5),
        ),
      ),
    );
  }
}
