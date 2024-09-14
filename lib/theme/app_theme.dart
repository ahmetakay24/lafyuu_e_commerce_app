import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  var theme = ThemeData(scaffoldBackgroundColor: Colors.white);

  //Colors
  Color primaryBlue = const Color.fromRGBO(64, 191, 255, 1);
  Color primaryRed = const Color.fromRGBO(251, 113, 129, 1);
  Color primaryYellow = const Color.fromRGBO(255, 200, 51, 1);
  Color primaryGreen = const Color.fromRGBO(83, 209, 182, 1);
  Color primaryPurple = const Color.fromRGBO(92, 97, 244, 1);

  Color neutralDark = const Color.fromRGBO(64, 191, 255, 1);
  Color neutralGrey = const Color.fromRGBO(251, 113, 129, 1);
  Color neutralLight = const Color.fromRGBO(255, 200, 51, 1);

  Color backgroundColor = const Color.fromRGBO(255, 255, 255, 1);

  //Fonts

  //Heading
  TextStyle heading1 = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
    fontSize: 32.r,
    color: Colors.black,
    letterSpacing: 0.5.r,
    height: 1.5.r,
  );

  TextStyle heading2 = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
    fontSize: 24.r,
    color: Colors.black,
    letterSpacing: 0.5.r,
    height: 1.5.r,
  );

  TextStyle heading3 = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
    fontSize: 20.r,
    color: Colors.black,
    letterSpacing: 0.5.r,
    height: 1.5.r,
  );

  TextStyle heading4 = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
    fontSize: 16.r,
    color: Colors.black,
    letterSpacing: 0.5.r,
    height: 1.5.r,
  );

  TextStyle heading5 = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
    fontSize: 14.r,
    color: Colors.black,
    letterSpacing: 0.5.r,
    height: 1.5.r,
  );

  TextStyle heading6 = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
    fontSize: 10.r,
    color: Colors.black,
    letterSpacing: 0.5.r,
    height: 1.5.r,
  );

  //Body
  TextStyle bodyLargeBold = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
    fontSize: 16.r,
    color: Colors.black,
    letterSpacing: 0.5.r,
    height: 1.8.r,
  );

  TextStyle bodyLargeRegular = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.normal,
    fontSize: 16.r,
    color: Colors.black,
    letterSpacing: 0.5.r,
    height: 1.8.r,
  );

  TextStyle bodyMediumBold = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
    fontSize: 14.r,
    color: Colors.black,
    letterSpacing: 0.5.r,
    height: 1.8.r,
  );

  TextStyle bodyMediumRegular = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.normal,
    fontSize: 14.r,
    color: Colors.black,
    letterSpacing: 0.5.r,
    height: 1.8.r,
  );

  TextStyle bodyNormalBold = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
    fontSize: 12.r,
    color: Colors.black,
    letterSpacing: 0.5.r,
    height: 1.8.r,
  );

  TextStyle bodyNormalRegular = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.normal,
    fontSize: 12.r,
    color: Colors.black,
    letterSpacing: 0.5.r,
    height: 1.8.r,
  );

  //Caption
  TextStyle captionLargeBold12 = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
    fontSize: 12.r,
    color: Colors.black,
    letterSpacing: 0.5.r,
    height: 1.5.r,
  );

  TextStyle captionLargeRegular12 = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.normal,
    fontSize: 12.r,
    color: Colors.black,
    letterSpacing: 0.5.r,
    height: 1.5.r,
  );

  TextStyle captionLargeBold10 = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
    fontSize: 10.r,
    color: Colors.black,
    letterSpacing: 0.5.r,
    height: 1.5.r,
  );

  TextStyle captionLargeRegular10 = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.normal,
    fontSize: 10.r,
    color: Colors.black,
    letterSpacing: 0.5.r,
    height: 1.5.r,
  );

  //Link
  TextStyle linkText = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
    fontSize: 12.r,
    color: const Color.fromRGBO(64, 191, 255, 1),
    letterSpacing: 0.5.r,
    height: 1.5.r,
  );
}
