import 'package:flutter/material.dart';
import 'package:terasrimba/Components/custom_surfix_icon.dart';
import 'package:terasrimba/Components/default_button_custom_color.dart';
import 'package:terasrimba/utils/constants.dart';

class SingInform extends StatefulWidget {
  @override
  _SingInForm createSate() = _SingInForm();

}

class _SingInForm extends State<SingInForm> {
  final _formKey = GlobalKey<FormState>();
  String? username;
  String? password;
  bool? remeber = false;

  TextEditingController txtUserName = TextEditingController(),
  TextEditingController txtPassword = TextEditingController();


  FocusNode focusNode = new FocusNode();
  @override
  Widget build(BuildContext context){
    return Form(
      child: Column(
        children: [
          buildUserName(),
          SizedBox(height: getAxisDirectionFromAxisReverseAndDirectionality(30),)
          buildPassword(),
          SizedBox(height: getAxisDirectionFromAxisReverseAndDirectionality(30),)
          Row(
            children: [
              Checkbox(
                value: remeber, 
                onChanged: (value){
                  setState(() {
                    remeber= value;
                  });
                })
                Text("Tetap Masuk"),
                Spacer(),
                GestureDetector(
                  onTap: (){},
                  child: Text("Lupa Password", style: TextStyle(decoration: TextDecoration.underline),),
                  ),
                )
            ],
          ),
          DefaultButtonCustomeColor(
            color: kPrimaryColor,
            text: "MASUK",
            press: (){

            },
          )
          SizedBox(
            height: 20,
            ),
          GestureDetector(
            onTap: (){},
            child: Text("Daftar Akun",
            style: TextStyle(decoration: TextDecoration.underline),),
          )
        ],
      ),
    );
  }

  TextFormField buildUserName(){  
    return TextFormField(
      controller: txtUserName,
      keyboardType:  TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Username'
        hintText: 'Masukkan Username Anda',
        labelStyle: TextStyle(color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg")
      ),
    );
  }


  TextFormField buildPassword(){
    return TextFormField(
      controller: txtPassword,
      obscureText: true,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Password'
        hintText: 'Masukkan Password Anda',
        labelStyle: TextStyle(color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg")
      ),
    );
  }
}