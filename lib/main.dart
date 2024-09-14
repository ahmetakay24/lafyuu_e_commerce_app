import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lafyuu_e_commerce_app/screens/login/view/login_view.dart';
import 'package:lafyuu_e_commerce_app/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppTheme appTheme = AppTheme();

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        title: 'Lafyuu',
        theme: appTheme.theme,
        debugShowCheckedModeBanner: false,
        home: child,
      ),
      child: const LoginView(),
    );
  }
}
