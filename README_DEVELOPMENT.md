# 🌿 Teras Rimba - Aplikasi Login & Register

Aplikasi Flutter yang menampilkan sistem login dan registrasi yang sempurna dengan validasi form yang lengkap, UI/UX yang menarik, dan struktur kode yang rapi dan profesional.

## 📁 Struktur Proyek

```
lib/
├── main.dart                          # Entry point aplikasi
├── theme.dart                         # Konfigurasi tema global
├── routes.dart                        # Definisi rute aplikasi
├── size_config.dart                   # Konfigurasi ukuran responsive
│
├── Screens/
│   ├── Login/
│   │   └── login_screen.dart         # Screen halaman login
│   └── Register/
│       └── register_screen.dart      # Screen halaman registrasi
│
├── Components/
│   ├── Login/
│   │   ├── login_component.dart      # Komponen layout login
│   │   └── login_form.dart           # Form input login
│   ├── Register/
│   │   ├── register_component.dart   # Komponen layout registrasi
│   │   └── register_form.dart        # Form input registrasi
│   ├── custom_suffix_icon.dart       # Custom icon suffix untuk input
│   └── default_button.dart           # Tombol custom default
│
└── utils/
    └── constants.dart                 # Konstanta, warna, text styles, validators
```

## ✨ Fitur Utama

### 1. **Halaman Login**
- ✅ Input Username dengan validasi
- ✅ Input Password dengan toggle visibility
- ✅ Checkbox "Tetap Masuk"
- ✅ Link "Lupa Password" (placeholder untuk future feature)
- ✅ Tombol login dengan validasi form
- ✅ Link navigasi ke halaman registrasi
- ✅ Styling responsif dan menarik

### 2. **Halaman Registrasi**
- ✅ Input Nama Lengkap
- ✅ Input Email dengan validasi format
- ✅ Input Username dengan validasi unique
- ✅ Input Password dengan toggle visibility
- ✅ Input Konfirmasi Password dengan validasi match
- ✅ Checkbox setuju dengan Syarat & Ketentuan
- ✅ Validasi lengkap untuk semua field
- ✅ Tombol registrasi dengan animasi
- ✅ Link kembali ke halaman login

### 3. **Validasi Form**
- 📋 Validasi Email dengan regex
- 📋 Validasi Username (min 3 - max 20 karakter)
- 📋 Validasi Password (min 6 karakter)
- 📋 Validasi Nama Lengkap (min 3 karakter)
- 📋 Validasi Konfirmasi Password
- 📋 Pesan error yang user-friendly dalam Bahasa Indonesia

### 4. **UI/UX**
- 🎨 Warna konsisten dengan tema Teras Rimba (Teal Primary)
- 🎨 Typography menggunakan Google Fonts (Poppins)
- 🎨 Input field dengan outline border modern
- 🎨 Error border dengan warna merah
- 🎨 Focus state yang jelas
- 🎨 Responsive design untuk berbagai ukuran layar
- 🎨 Icon SVG untuk visual yang lebih baik
- 🎨 Animasi smooth pada transisi

## 🎯 Warna & Style

### Palet Warna
- **Primary**: `#1DB9C3` (Teal) - Main color
- **Secondary**: `#398AB9` (Blue)
- **Title**: `#23374D` (Dark Blue)
- **Subtitle**: `#8E8E8E` (Gray)
- **Border**: `#E8E8F3` (Light Gray)
- **Background**: `#FAFAFA` (Light Gray)
- **White**: `#FFFFFF`

### Text Styles
- **Heading**: Poppins Bold 28px
- **Subheading**: Poppins Semi-bold 20px
- **Title**: Poppins Semi-bold 16px
- **Subtitle**: Poppins Regular 14px
- **Body**: Poppins Regular 12px

## 🚀 Cara Menjalankan

### Prerequisites
```bash
flutter --version  # >= 3.0.0
dart --version     # >= 3.0.0
```

### Setup & Run
```bash
# 1. Instal dependencies
flutter pub get

# 2. Jalankan aplikasi
flutter run

# 3. Build release (Android)
flutter build apk --release

# 4. Build release (iOS)
flutter build ios --release
```

## 📦 Dependencies

```yaml
flutter_svg: ^2.0.7        # SVG rendering
google_fonts: ^6.1.0       # Custom fonts dari Google
simple_shadow: ^0.3.0      # Shadow effects
cupertino_icons: ^1.0.5    # iOS-style icons
```

## 🔐 Validasi & Keamanan

### Form Validation
```dart
// Email validation
String? validateEmail(String value)  // Check format email

// Username validation  
String? validateUsername(String value)  // Min 3, Max 20 chars

// Password validation
String? validatePassword(String value)  // Min 6 chars

// Name validation
String? validateName(String value)  // Min 3 chars

// Phone validation
String? validatePhone(String value)  // Min 10 digits
```

### Security Best Practices
- ✅ Password field menggunakan `obscureText`
- ✅ Toggle visibility untuk melihat password
- ✅ Validasi form sebelum submit
- ✅ Clear input saat mount component
- ✅ Dispose controller untuk free memory
- ✅ Sanitize input

## 🎮 User Flow

```
┌─────────────────────────────────────────┐
│         Launch Aplikasi                 │
│      (main.dart → Login Screen)         │
└──────────────┬──────────────────────────┘
               │
        ┌──────▼──────┐
        │   Login     │
        │   Screen    │
        └──────┬──────┘
               │
       ┌───────┴────────┐
       │                │
   ┌───▼───┐      ┌────▼─────┐
   │Login  │      │Register  │
   │Valid  │      │Link      │
   └───┬───┘      └────┬─────┘
       │                │
       │          ┌─────▼──────┐
       │          │ Register   │
       │          │ Screen     │
       │          └─────┬──────┘
       │                │
       │        ┌───────▼─────┐
       │        │ Register    │
       │        │ Valid       │
       │        └───────┬─────┘
       │                │
       └────────┬───────┘
              ┌─▼─────────┐
              │Home Screen│ (TODO)
              │or Dashboard
              └───────────┘
```

## 📝 TODO Features

- [ ] Forgot Password Screen & Logic
- [ ] Home Dashboard Screen
- [ ] API Integration untuk login/register
- [ ] Save user session (SharedPreferences/Hive)
- [ ] Social login (Google, Facebook)
- [ ] Email verification
- [ ] Password reset flow
- [ ] Profile screen
- [ ] User data management

## 🐛 Troubleshooting

### Masalah: "flutter: No configuration found in $FLUTTER_HOME/packages/flutter_tools/lib/src/ios/xcode_backend.sh"
**Solusi**: Run `flutter clean` kemudian `flutter pub get`

### Masalah: Icon tidak muncul
**Solusi**: Pastikan asset path di `pubspec.yaml` benar
```yaml
assets:
  - assets/icons/
  - assets/images/
```

### Masalah: Build error pada iOS
**Solusi**: 
```bash
flutter clean
rm -rf ios/Pods ios/Podfile.lock
flutter pub get
flutter run
```

## 📱 Testing Accounts

Gunakan data berikut untuk testing:
- **Username**: `testuser`
- **Password**: `password123`
- **Email**: `test@example.com`

## 📄 Lisensi

Proyek ini adalah bagian dari **Teras Rimba** - Platform edukasi berbasis Flutter.

## 👨‍💻 Author

Dibuat dengan ❤️ oleh **TerasRimba Team**

---

**Versi**: 1.0.0  
**Terakhir Update**: January 2026  
**Status**: 🟢 Development
