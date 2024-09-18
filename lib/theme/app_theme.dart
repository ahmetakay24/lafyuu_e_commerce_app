import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  //Theme
  var theme = ThemeData(scaffoldBackgroundColor: Colors.white);

  //Sizes
  late final double screenHeight;
  late final double screenWidth;

  AppTheme(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
  }

  //Colors
  Color primaryBlue = const Color.fromRGBO(64, 191, 254, 1);
  Color primaryRed = const Color.fromRGBO(251, 112, 128, 1);
  Color primaryYellow = const Color.fromRGBO(255, 201, 50, 1);
  Color primaryGreen = const Color.fromRGBO(82, 208, 183, 1);
  Color primaryPurple = const Color.fromRGBO(92, 97, 244, 1);

  Color neutralDark = const Color.fromRGBO(32, 50, 98, 1);
  Color neutralGrey = const Color.fromRGBO(144, 152, 176, 1);
  Color neutralLight = const Color.fromRGBO(235, 240, 255, 1);

  Color backgroundColor = const Color.fromRGBO(255, 255, 255, 1);

  //Fonts

  //Heading
  TextStyle heading1 = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
    fontSize: 32.sp,
    color: const Color.fromRGBO(144, 152, 176, 1),
    letterSpacing: 0.5,
    height: 1.5,
  );

  TextStyle heading2 = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
    fontSize: 24.sp,
    color: const Color.fromRGBO(144, 152, 176, 1),
    letterSpacing: 0.5,
    height: 1.5,
  );

  TextStyle heading3 = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
    fontSize: 20.sp,
    color: const Color.fromRGBO(144, 152, 176, 1),
    letterSpacing: 0.5,
    height: 1.5,
  );

  TextStyle heading4 = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
    fontSize: 16.sp,
    color: const Color.fromRGBO(144, 152, 176, 1),
    letterSpacing: 0.5,
    height: 1.5,
  );

  TextStyle heading5 = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
    fontSize: 14.sp,
    color: const Color.fromRGBO(144, 152, 176, 1),
    letterSpacing: 0.5,
    height: 1.5,
  );

  TextStyle heading6 = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
    fontSize: 10.sp,
    color: const Color.fromRGBO(144, 152, 176, 1),
    letterSpacing: 0.5,
    height: 1.5,
  );

  //Body
  TextStyle bodyLargeBold = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
    fontSize: 16.sp,
    color: const Color.fromRGBO(144, 152, 176, 1),
    letterSpacing: 0.5,
    height: 1.8,
  );

  TextStyle bodyLargeRegular = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.normal,
    fontSize: 16.sp,
    color: const Color.fromRGBO(144, 152, 176, 1),
    letterSpacing: 0.5,
    height: 1.8,
  );

  TextStyle bodyMediumBold = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
    fontSize: 14.sp,
    color: const Color.fromRGBO(144, 152, 176, 1),
    letterSpacing: 0.5,
    height: 1.8,
  );

  TextStyle bodyMediumRegular = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.normal,
    fontSize: 14.sp,
    color: const Color.fromRGBO(144, 152, 176, 1),
    letterSpacing: 0.5,
    height: 1.8,
  );

  TextStyle bodyNormalBold = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
    fontSize: 12.sp,
    color: const Color.fromRGBO(144, 152, 176, 1),
    letterSpacing: 0.5,
    height: 1.8,
  );

  TextStyle bodyNormalRegular = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.normal,
    fontSize: 12.sp,
    color: const Color.fromRGBO(144, 152, 176, 1),
    letterSpacing: 0.5,
    height: 1.8,
  );

  //Caption
  TextStyle captionLargeBold12 = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
    fontSize: 12.sp,
    color: const Color.fromRGBO(144, 152, 176, 1),
    letterSpacing: 0.5,
    height: 1.5,
  );

  TextStyle captionLargeRegular12 = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.normal,
    fontSize: 12.sp,
    color: const Color.fromRGBO(144, 152, 176, 1),
    letterSpacing: 0.5,
    height: 1.5,
  );

  TextStyle captionLargeBold10 = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
    fontSize: 10.sp,
    color: const Color.fromRGBO(144, 152, 176, 1),
    letterSpacing: 0.5,
    height: 1.5,
  );

  TextStyle captionLargeRegular10 = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.normal,
    fontSize: 10.sp,
    color: const Color.fromRGBO(144, 152, 176, 1),
    letterSpacing: 0.5,
    height: 1.5,
  );

  //Link
  TextStyle linkText = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
    fontSize: 12.sp,
    color: const Color.fromRGBO(64, 191, 255, 1),
    letterSpacing: 0.5,
    height: 1.5,
  );
}
