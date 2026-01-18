import 'package:flutter/material.dart';
import 'package:terasrimba/Components/custom_suffix_icon.dart';
import 'package:terasrimba/Components/default_button.dart';
import 'package:terasrimba/utils/constants.dart';
import 'package:terasrimba/size_config.dart';
import 'package:terasrimba/Screens/Login/login_screen.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController txtFullName;
  late TextEditingController txtEmail;
  late TextEditingController txtUsername;
  late TextEditingController txtPassword;
  late TextEditingController txtConfirmPassword;

  late FocusNode focusNodeFullName;
  late FocusNode focusNodeEmail;
  late FocusNode focusNodeUsername;
  late FocusNode focusNodePassword;
  late FocusNode focusNodeConfirmPassword;

  bool agreedToTerms = false;
  bool showPassword = false;
  bool showConfirmPassword = false;

  @override
  void initState() {
    super.initState();
    txtFullName = TextEditingController();
    txtEmail = TextEditingController();
    txtUsername = TextEditingController();
    txtPassword = TextEditingController();
    txtConfirmPassword = TextEditingController();

    focusNodeFullName = FocusNode();
    focusNodeEmail = FocusNode();
    focusNodeUsername = FocusNode();
    focusNodePassword = FocusNode();
    focusNodeConfirmPassword = FocusNode();
  }

  @override
  void dispose() {
    txtFullName.dispose();
    txtEmail.dispose();
    txtUsername.dispose();
    txtPassword.dispose();
    txtConfirmPassword.dispose();

    focusNodeFullName.dispose();
    focusNodeEmail.dispose();
    focusNodeUsername.dispose();
    focusNodePassword.dispose();
    focusNodeConfirmPassword.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildFullName(),
          SizedBox(height: getProportionateScreenWidth(20)),
          buildEmail(),
          SizedBox(height: getProportionateScreenWidth(20)),
          buildUsername(),
          SizedBox(height: getProportionateScreenWidth(20)),
          buildPassword(),
          SizedBox(height: getProportionateScreenWidth(20)),
          buildConfirmPassword(),
          SizedBox(height: getProportionateScreenWidth(20)),
          Row(
            children: [
              Checkbox(
                value: agreedToTerms,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    agreedToTerms = value ?? false;
                  });
                },
              ),
              Expanded(
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(color: mSubtitleColor, fontSize: 12),
                    children: [
                      const TextSpan(text: "Saya setuju dengan "),
                      TextSpan(
                        text: "Syarat & Ketentuan",
                        style: const TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: getProportionateScreenWidth(30)),
          DefaultButton(
            color: kPrimaryColor,
            text: "DAFTAR",
            press: () async {
              if (_formKey.currentState!.validate()) {
                if (!agreedToTerms) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Anda harus menyetujui syarat & ketentuan'),
                      backgroundColor: Colors.orange,
                      duration: Duration(seconds: 2),
                    ),
                  );
                  return;
                }

                // TODO: Handle registration logic
                FocusScope.of(context).unfocus();

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Pendaftaran berhasil'),
                    backgroundColor: kPrimaryColor,
                    duration: Duration(seconds: 2),
                  ),
                );

                await Future.delayed(const Duration(seconds: 2));

                if (mounted) {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    LoginScreen.routeName,
                    (route) => false,
                  );
                }
              }
            },
          ),
          SizedBox(height: getProportionateScreenWidth(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sudah punya akun? ",
                style: TextStyle(color: mSubtitleColor),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Masuk",
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

  TextFormField buildFullName() {
    return TextFormField(
      controller: txtFullName,
      keyboardType: TextInputType.text,
      focusNode: focusNodeFullName,
      validator: (value) => validateName(value ?? ''),
      decoration: buildInputDecoration(
        labelText: 'Nama Lengkap',
        hintText: 'Masukkan nama lengkap Anda',
        svgIcon: 'assets/icons/User.svg',
        focusNode: focusNodeFullName,
      ),
    );
  }

  TextFormField buildEmail() {
    return TextFormField(
      controller: txtEmail,
      keyboardType: TextInputType.emailAddress,
      focusNode: focusNodeEmail,
      validator: (value) => validateEmail(value ?? ''),
      decoration: buildInputDecoration(
        labelText: 'Email',
        hintText: 'Masukkan email Anda',
        svgIcon: 'assets/icons/Mail.svg',
        focusNode: focusNodeEmail,
      ),
    );
  }

  TextFormField buildUsername() {
    return TextFormField(
      controller: txtUsername,
      keyboardType: TextInputType.text,
      focusNode: focusNodeUsername,
      validator: (value) => validateUsername(value ?? ''),
      decoration: buildInputDecoration(
        labelText: 'Username',
        hintText: 'Pilih username unik',
        svgIcon: 'assets/icons/User.svg',
        focusNode: focusNodeUsername,
      ),
    );
  }

  TextFormField buildPassword() {
    return TextFormField(
      controller: txtPassword,
      obscureText: !showPassword,
      focusNode: focusNodePassword,
      validator: (value) => validatePassword(value ?? ''),
      decoration: buildInputDecoration(
        labelText: 'Password',
        hintText: 'Masukkan password Anda',
        svgIcon: 'assets/icons/Lock.svg',
        focusNode: focusNodePassword,
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              showPassword = !showPassword;
            });
          },
          child: Icon(
            showPassword ? Icons.visibility : Icons.visibility_off,
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }

  TextFormField buildConfirmPassword() {
    return TextFormField(
      controller: txtConfirmPassword,
      obscureText: !showConfirmPassword,
      focusNode: focusNodeConfirmPassword,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Konfirmasi password tidak boleh kosong';
        }
        if (value != txtPassword.text) {
          return 'Password tidak cocok';
        }
        return null;
      },
      decoration: buildInputDecoration(
        labelText: 'Konfirmasi Password',
        hintText: 'Masukkan ulang password Anda',
        svgIcon: 'assets/icons/Lock.svg',
        focusNode: focusNodeConfirmPassword,
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              showConfirmPassword = !showConfirmPassword;
            });
          },
          child: Icon(
            showConfirmPassword ? Icons.visibility : Icons.visibility_off,
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }

  InputDecoration buildInputDecoration({
    required String labelText,
    required String hintText,
    required String svgIcon,
    required FocusNode focusNode,
    Widget? suffixIcon,
  }) {
    return InputDecoration(
      labelText: labelText,
      hintText: hintText,
      labelStyle: TextStyle(
        color: focusNode.hasFocus ? kPrimaryColor : mSubtitleColor,
        fontWeight: FontWeight.w500,
      ),
      hintStyle: const TextStyle(color: mGreyColor),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      prefixIcon:
          suffixIcon == null ? CustomSuffixIcon(svgIcon: svgIcon) : null,
      suffixIcon: suffixIcon,
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
    );
  }
}
