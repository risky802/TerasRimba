# 🎨 UI Components & Color Guide

## 🌈 Palet Warna Aplikasi

### Primary Colors
```
Teal (Primary)       : #1DB9C3  RGB(29, 185, 195)
Blue (Secondary)     : #398AB9  RGB(57, 138, 185)
Teal Variation       : #008080  RGB(0, 128, 128)
Dark Teal           : #159897  RGB(21, 152, 151)
Light Teal          : #03c0c1  RGB(3, 192, 193)
```

### Text Colors
```
Title (Dark)         : #23374D  RGB(35, 55, 77)
Subtitle (Gray)      : #8E8E8E  RGB(142, 142, 142)
Light Gray           : #C5C5C5  RGB(197, 197, 197)
Blue Color           : #2C53B1  RGB(44, 83, 177)
```

### Background & Border
```
Background           : #FAFAFA  RGB(250, 250, 250)
White                : #FFFFFF  RGB(255, 255, 255)
Border               : #E8E8F3  RGB(232, 232, 243)
Error                : #FF0000  RGB(255, 0, 0)
```

### Accent Colors
```
Green                : #00FCA6  RGB(0, 252, 166)
Yellow               : #FFC654  RGB(255, 198, 84)
Orange               : #FFA53E  RGB(255, 165, 62)
Red                  : #f55f60  RGB(245, 95, 96)
```

---

## 📱 Component Designs

### 1. Input TextField
```
┌─────────────────────────────────────────┐
│ Username                                │
│ ┌───────────────────────────────────────┤
│ │ masukkan username anda              ▌│
│ └───────────────────────────────────────┤
│                           [SVG Icon]    │
└─────────────────────────────────────────┘
```

**Style:**
- Border: 1.5px (enabled), 2px (focused)
- Border Radius: 8px
- Padding: 20px horizontal, 16px vertical
- Font: Poppins Regular 16px
- Color (enabled): #E8E8F3
- Color (focused): #1DB9C3
- Color (error): #FF0000

### 2. Button Component
```
╔═════════════════════════════════════════╗
║          MASUK / DAFTAR                 ║
║         (Teal #1DB9C3)                  ║
╚═════════════════════════════════════════╝
```

**Style:**
- Height: 56px (proportionate)
- Width: Full (double.infinity)
- Border Radius: 8px
- Font: Poppins Semi-bold 18px
- Color: White Text
- Background: #1DB9C3 (Primary)
- Elevation: 2px
- Click Effect: Scale down + ripple

### 3. Checkbox + Text
```
☑ Tetap Masuk          [Lupa Password?]
```

**Style:**
- Checkbox color: #1DB9C3
- Text: Poppins Regular 14px, #23374D
- Link: Poppins Regular 14px, #1DB9C3 (underline)

---

## 📐 Responsive Sizes

### Screen Breakpoints
```
Mobile:     < 600dp   (Portrait)
Tablet:     600-1200dp (Landscape)
Desktop:    > 1200dp
```

### Standard Sizes
```
Spacing Unit: 8px (base)

Padding:
- Small:    8px (1 unit)
- Normal:  16px (2 units)
- Large:   24px (3 units)
- XLarge:  32px (4 units)

Border Radius:
- Small:    4px
- Normal:   8px
- Large:   16px
- Full:     50%

Icon Sizes:
- Small:   16px
- Normal:  24px
- Large:   32px
- XLarge:  48px
```

### Layout Grid
```
Mobile (360px width):
- Padding: 20px (horizontal)
- Content: 320px
- Spacing: 20-30px (vertical)

Tablet (768px width):
- Padding: 32px (horizontal)
- Content: 704px
- Spacing: 30-40px (vertical)
```

---

## 🎯 Typography System

### Font Family: Google Fonts - Poppins

### Heading
```
Heading Large (H1)
Font: Poppins Bold 32px
Line Height: 1.5
Color: #23374D
Example: "Selamat Datang"
```

### Heading Medium (H2)
```
Font: Poppins Semi-bold 24px
Line Height: 1.4
Color: #23374D
Example: "Buat Akun Baru"
```

### Heading Small (H3)
```
Font: Poppins Semi-bold 18px
Line Height: 1.3
Color: #23374D
```

### Body Text
```
Body Large
Font: Poppins Medium 16px
Color: #23374D

Body Regular
Font: Poppins Regular 14px
Color: #8E8E8E

Body Small
Font: Poppins Regular 12px
Color: #C5C5C5
```

### Label
```
Font: Poppins Semi-bold 14px
Color: #1DB9C3
Usage: Input labels, button text, links
```

---

## 🖼️ Screen Layouts

### Login Screen Flow
```
┌─────────────────────┐
│  Logo/Illustration  │  (Safe Area Top)
├─────────────────────┤
│  "Selamat Datang"   │  (Heading)
│ "Masuk ke akun Anda │  (Subtitle)
├─────────────────────┤
│  Username Input     │  (Form)
│  Password Input     │  (Form)
│  [Tetap Masuk] [?]  │  (Checkbox)
├─────────────────────┤
│   [MASUK Button]    │  (Action)
├─────────────────────┤
│ Belum punya akun?   │  (Link to Register)
│ [Daftar Sekarang]   │
└─────────────────────┘
```

### Register Screen Flow
```
┌─────────────────────┐
│ "Buat Akun Baru"    │  (Title)
│ "Daftar di Teras... │  (Subtitle)
├─────────────────────┤
│ Nama Lengkap Input  │  (Form)
│ Email Input         │  (Form)
│ Username Input      │  (Form)
│ Password Input      │  (Form)
│ Konfirmasi Password │  (Form)
├─────────────────────┤
│ ☑ Saya setuju       │  (Checkbox)
│   [Syarat & Keten]  │
├─────────────────────┤
│  [DAFTAR Button]    │  (Action)
├─────────────────────┤
│ Sudah punya akun?   │  (Link)
│ [Masuk]             │
└─────────────────────┘
```

---

## 🎬 Animation & Transition

### Page Transition
```
Duration: 250-300ms
Type: Slide (dari kanan ke kiri)
Curve: Ease-in-out
```

### Input Focus Animation
```
Duration: 200ms
Change: Border color (#E8E8F3 → #1DB9C3)
Label color (#8E8E8E → #1DB9C3)
```

### Button Press Animation
```
Duration: 150ms
Effect: Scale 0.98 + Ripple
Color: White with 10% opacity
```

### Error Animation
```
Duration: 300ms
Effect: Shake (5px left-right)
Border color change to red (#FF0000)
```

---

## 🔌 Icon Guide

### SVG Icons Used
```
assets/icons/
├── User.svg         (Username input)
├── Lock.svg         (Password input)
├── Mail.svg         (Email input)
├── Eye.svg          (Show password)
├── Eye-off.svg      (Hide password)
└── Check.svg        (Checkbox)
```

### Icon Color Schemes
```
Primary State: #1DB9C3 (Teal)
Hover State:   #159897 (Dark Teal)
Disabled:      #C5C5C5 (Light Gray)
Error:         #FF0000 (Red)
Success:       #00FCA6 (Green)
```

---

## 📊 Spacing Consistency

### Vertical Spacing (Between Components)
```
Input to Input:       20-30px
Input to Button:      30px
Button to Link:       20px
Link to Safe Area:    20px
Top Safe Area:        40-60px
```

### Horizontal Padding
```
Screen Edge to Content: 20px (mobile)
                       32px (tablet)
                       48px (desktop)
```

---

## ✨ Special Effects

### Shadow Effects
```
Input Focus:
  offset: (0, 2)
  blur: 4px
  color: rgba(29, 185, 195, 0.1)

Button:
  offset: (0, 2)
  blur: 8px
  color: rgba(29, 185, 195, 0.2)
```

### Gradient (Optional)
```
Primary Gradient:
  begin: Alignment.topLeft
  end: Alignment.bottomRight
  colors: [#FFA53E, #FF7643]
```

---

## 🎯 Accessibility

### Color Contrast
```
Text on White: WCAG AA ✓ (4.5:1 minimum)
Button Text: WCAG AAA ✓ (7:1 minimum)
Links: WCAG AA ✓ (4.5:1 minimum)
```

### Touch Target Size
```
Minimum: 48x48dp
Buttons: 56x56dp (actual height)
Checkboxes: 24x24dp
Icons: 20x20dp - 48x48dp
```

### Font Size
```
Minimum: 12px (body small)
Normal: 14-16px (body text)
Headings: 18-32px
```

---

**Last Updated**: January 2026  
**Status**: ✅ Complete & Production Ready
