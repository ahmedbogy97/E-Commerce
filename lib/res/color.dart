import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Color converter: https://www.w3schools.com/colors/colors_converter.asp
// Transparency list
// 100% FF
// 95%  F2
// 90%  E6
// 87%  DE
// 85%  D9
// 80%  CC
// 75%  BF
// 70%  B3
// 65%  A6
// 60%  99
// 55%  8C
// 54%  8A
// 50%  80
// 45%  73
// 40%  66
// 35%  59
// 32%  52
// 30%  4D
// 26%  42
// 25%  40
// 20%  33
// 16%  29
// 15%  26
// 12%  1F
// 10%  1A
// 5%   0D
// 0%   00
/* ------------------------Theme Colors ----------------------------------*/
// scaffold background
// const scaffoldBackgroundColor = Colors.blue;
const scaffoldBackgroundColor = Color(0xFFf7f7f7);
const scaffoldBackgroundColorDark = Color(0xFF15616F);


const cardColor = Colors.white;
const cardColorDark = Color(0xff323232);
// Highlight
final highlightColor = Colors.grey.shade300;
const highlightColorDark = Colors.black;

// statusBar
// const statusBarColor = Color(0xffffffff);
const statusBarColor = primaryColor;
const statusBarColorDark = Color(0xff19456B);

// appBar
const appBarColor = statusBarColor;
const appBarColorDark = statusBarColorDark;

// fab
final floatingActionButtonColor = colorOrange;
const floatingActionButtonColorDark = statusBarColorDark;

// accent
final accentColor = secondColor;
const accentColorDark = Color(0xff17c063);

// app
const appRateActive = Colors.amber;
const appRateInActive = Colors.grey;
const appColorDark = Colors.amber;
const appColor = Color(0xFFFA8072);

// error

final errorColor = Colors.red.shade800;
const errorColorDark = Colors.redAccent;

// primary color
const primaryColor = Color(0xFFe11313);
const primaryColorDark = Color(0xFFFF7E02);

const secondColor = Color(0xFFFF7E02);

// gray scale
const grayScaleColor = Color(0xFFCCCCCC);
const grayScaleDarkColor = Color(0xFFA7A7A7);
const rateBackground = Color(0xFF333333);
const highLiteColor = Color(0xAA232323);

// app bar icons
const appBarIconsColor = Colors.black87;
const appBarIconsColorDark = Colors.white;

// app bar text color
const appBarTextColor = appBarIconsColorDark;
const appBarTextColorDark = appBarIconsColor;

//divider
const dividerColor = Colors.grey;
const dividerColorDark = Color(0xff464646);

// primary text
const textPrimary = Color(0xFF15616F);
const textPrimaryDark = Colors.white;

// primary text
const textSecondary = Color(0xff7E7E7E);
const textSecondaryDark = Color(0xffB0B0B0);

const unSelectColor = Color(0x97e3e2e2);

// bottom navigation icons
const navIconSelected = Color(0xFFFF7E02);
const navIconSelectedDark = Colors.white;

const navIconUnselected = Colors.grey;
const navIconUnselectedDark = Colors.grey;

// button
const colorButton = Color(0xffFF8B13);
const colorButtonDark = Colors.redAccent;

// text field
const active = Colors.black;
const activeDark = Colors.white;

const borderColor = Colors.grey;

// cursor
const cursor = Colors.grey;
const cursorDark = Colors.grey;

// textSelectionHandleColor
const textSelectionHandle = Colors.grey;
const textSelectionHandleDark = Colors.grey;

const textSelection = Colors.grey;
const textSelectionDark = Colors.grey;

const shimmerColor = Color(0xFFE0E0E0);

/*-----------------------------Other Colors----------------------------------*/
Color get backgroundColor => const Color(0xFFFFFFFF);

final colorBgPositiveMessage = LinearGradient(
  colors: [Colors.green.shade800, Colors.greenAccent.shade700],
  stops: const [0.6, 1],
);
final colorBgNeutralMessage = LinearGradient(
  colors: [Colors.blueGrey.shade800, Colors.blueGrey.shade500],
  stops: const [0.6, 1],
);
final colorBgNegativeMessage = LinearGradient(
  colors: [Colors.red.shade800, Colors.redAccent.shade700],
  stops: const [0.6, 1],
);

const colorOrange =  Color(0xffFF8B13);
// final colorBlue = Color(0xff009ACE);
const colorGreen = Colors.green;
final colorBlueBackground = const Color(0xFF15616F).withOpacity(.2);




LinearGradient getMainColorGradient() {
  return const LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      tileMode: TileMode.clamp,
      stops: [
        0.3,
        0.9
      ],
      colors: [
        Color(0xFF15616F),
        Color(0xFF3C8490),
      ]);
}
