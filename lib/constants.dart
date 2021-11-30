import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle appBodyText1 = GoogleFonts.poppins(
  fontSize: ScreenUtil().setSp(15),
);

TextStyle appButtonText1 = GoogleFonts.poppins(
  fontSize: ScreenUtil().setSp(15),
);

TextStyle appAppBarText = GoogleFonts.poppins();

TextTheme appTextTheme = TextTheme(
  headline6: appAppBarText,
  bodyText2: appBodyText1,
  button: appButtonText1,
);

AppBarTheme appAppBarTheme = AppBarTheme(
  color: Colors.green.shade800,
  centerTitle: true,
);

ButtonThemeData appButtonTheme = ButtonThemeData(
  buttonColor: Colors.green.shade800,
);

ThemeData appThemeData = ThemeData(
  textTheme: appTextTheme,
  appBarTheme: appAppBarTheme,
  buttonTheme: appButtonTheme,
);
