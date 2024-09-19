import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce_app/theme/app_theme.dart';
//import 'package:lafyuu_e_commerce_app/theme/app_theme.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    AppTheme appTheme = AppTheme(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //TextFormField teması ayarlandı
            TextFormField(
              style: appTheme.bodyNormalBold,
              cursorColor: appTheme.primaryBlue,
            ),
          ],
        ),
      ),
    );
  }
}
