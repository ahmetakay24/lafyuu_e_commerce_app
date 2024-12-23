import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lafyuu_e_commerce_app/screens/main_screen/view/main_screen_tab_view.dart';
import 'package:lafyuu_e_commerce_app/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      builder: (_, child) {
        AppTheme appTheme = AppTheme(context);

        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Lafyuu',
            theme: appTheme.theme,
            home: MainScreenTabView(
              appTheme: appTheme,
            ));
      },
      //child: LoginView(appTheme: appTheme,),
    );
  }
}
