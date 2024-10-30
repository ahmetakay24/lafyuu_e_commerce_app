import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce_app/core/functions/app_functions.dart';
import 'package:lafyuu_e_commerce_app/theme/app_theme.dart';

class CategoriesListViewButton extends StatelessWidget {
  const CategoriesListViewButton({
    super.key,
    required this.appTheme,
    required this.iconPath,
    required this.title,
  });

  final AppTheme appTheme;
  final String iconPath;
  final String title;

  @override
  Widget build(BuildContext context) {
    final buttonHeight = sizeCalculator(appTheme.screenHeight, 13.30);
    final buttonWidth = sizeCalculator(appTheme.screenWidth, 18.66);

    return SizedBox(
      height: buttonHeight,
      width: buttonWidth,
      child: Column(
        children: [
          Expanded(
            flex: 70,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: appTheme.neutralLight), // Kenarları siyah
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Image.asset(
                  iconPath,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
          ),
          const Spacer(
            flex: 5,
          ),
          Expanded(
              flex: 33,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: appTheme.captionLargeRegular10,
              ))
        ],
      ),
    );
  }
}