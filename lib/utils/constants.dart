import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../size_config.dart';

// ============== Colors ==============
const kPrimaryColor = Color(0xFF1DB9C3);
const kSecondaryColor = Color(0xFF398AB9);
const kThirdColor = Color(0xFFD8D2CB);
const kFourthColor = Color(0xFFEEEEEE);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kColorTeal = Color(0xFF008080);
const kColorTealSlow = Color(0xFF159897);
const kColorTealToSlow = Color(0xFF03c0c1);
const kColorBlue = Color(0xFF3EB2FF);
const kColorGreen = Color(0xFF00FCA6);
const kColorRedSlow = Color(0xFFf55f60);
const kColorYellow = Color(0xFFFFC654);

const mBackgroundColor = Color(0xFFFAFAFA);
const mBlueColor = Color(0xFF2C53B1);
const mGreyColor = Color(0xFFC5C5C5);
const mTitleColor = Color(0xFF23374D);
const mSubtitleColor = Color(0xFF8E8E8E);
const mBorderColor = Color(0xFFE8E8F3);
const mFillColor = Color(0xFFFFFFFF);
const mCardTitleColor = Color(0xFF2E4ECF);
const mCardSubtitleColor = mTitleColor;

const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);

const kTextColor = Color(0xFF757575);
const kAnimationDuration = Duration(milliseconds: 200);
const defaultDuration = Duration(milliseconds: 250);

// ============== Text Styles ==============
final mTitleStyle = GoogleFonts.poppins(
  fontSize: getProportionateScreenWidth(16),
  fontWeight: FontWeight.w600,
  color: mTitleColor,
);

final mSubtitleTextStyle = GoogleFonts.poppins(
  fontSize: getProportionateScreenWidth(14),
  fontWeight: FontWeight.w400,
  color: mSubtitleColor,
);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: mTitleColor,
  height: 1.5,
);

final subheadingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(20),
  fontWeight: FontWeight.w600,
  color: mTitleColor,
);

// ============== Form Validation ==============
final RegExp emailValidatorRegExp = RegExp(
  r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+',
);

String? validateEmail(String value) {
  if (value.isEmpty) {
    return "Email tidak boleh kosong";
  } else if (!emailValidatorRegExp.hasMatch(value)) {
    return "Masukkan email yang valid";
  }
  return null;
}

String? validateUsername(String value) {
  if (value.isEmpty) {
    return "Username tidak boleh kosong";
  } else if (value.length < 3) {
    return "Username minimal 3 karakter";
  } else if (value.length > 20) {
    return "Username maksimal 20 karakter";
  }
  return null;
}

String? validatePassword(String value) {
  if (value.isEmpty) {
    return "Password tidak boleh kosong";
  } else if (value.length < 6) {
    return "Password minimal 6 karakter";
  }
  return null;
}

String? validatePhone(String value) {
  if (value.isEmpty) {
    return "Nomor telepon tidak boleh kosong";
  } else if (value.length < 10) {
    return "Nomor telepon tidak valid";
  }
  return null;
}

String? validateName(String value) {
  if (value.isEmpty) {
    return "Nama tidak boleh kosong";
  } else if (value.length < 3) {
    return "Nama minimal 3 karakter";
  }
  return null;
}
