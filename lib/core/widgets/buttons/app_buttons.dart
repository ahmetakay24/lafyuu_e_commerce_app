import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce_app/core/functions/app_functions.dart';
import 'package:lafyuu_e_commerce_app/theme/app_theme.dart';

class LargeSecondaryButton extends StatelessWidget {
  const LargeSecondaryButton({
    super.key,
    required this.appTheme,
    required this.buttonText,
    required this.onPressed,
  });

  final AppTheme appTheme;
  final String buttonText;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          side: BorderSide(color: appTheme.neutralLight, width: 1),
        ),
        minimumSize: Size(appTheme.screenWidth, 46.8),
      ),
      child: Text(
        buttonText,
        style: appTheme.bodyMediumBold,
      ),
    );
  }
}

class LargePrimaryButton extends StatelessWidget {
  const LargePrimaryButton({
    super.key,
    required this.appTheme,
    required this.buttonText,
    required this.onPressed,
  });

  final AppTheme appTheme;
  final String buttonText;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 64, 191, 255),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        minimumSize: Size(appTheme.screenWidth, 46.8),
        elevation: 5,
        shadowColor: appTheme.primaryBlue.withOpacity(0.5),
      ).copyWith(
        overlayColor: WidgetStateProperty.resolveWith<Color?>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.pressed)) {
              return const Color.fromARGB(255, 64, 191, 255).withOpacity(0.8);
            }
            return null;
          },
        ),
      ),
      child: Text(
        buttonText,
        style: appTheme.bodyMediumBold.copyWith(color: Colors.white),
      ),
    );
  }
}

class SmallPrimaryButton extends StatelessWidget {
  const SmallPrimaryButton({
    super.key,
    required this.appTheme,
    required this.buttonText,
    required this.onPressed,
  });

  final AppTheme appTheme;
  final String buttonText;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromARGB(255, 64, 191, 255),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              minimumSize: const Size(99, 46.8),
              elevation: 5,
              shadowColor: appTheme.primaryBlue.withOpacity(0.5))
          .copyWith(
        overlayColor: WidgetStateProperty.resolveWith<Color?>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.pressed)) {
              return const Color.fromARGB(255, 64, 191, 255).withOpacity(0.8);
            }
            return null;
          },
        ),
      ),
      child: Text(
        buttonText,
        style: appTheme.bodyNormalBold.copyWith(color: Colors.white),
      ),
    );
  }
}

class SmallSecondaryButton extends StatelessWidget {
  const SmallSecondaryButton({
    super.key,
    required this.appTheme,
    required this.buttonText,
    required this.onPressed,
  });

  final AppTheme appTheme;
  final String buttonText;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          side: BorderSide(color: appTheme.neutralLight, width: 1),
        ),
        minimumSize: const Size(99, 46.8),
      ),
      child: Text(
        buttonText,
        style: appTheme.bodyMediumBold,
      ),
    );
  }
}

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    super.key,
    required this.appTheme,
  });

  final AppTheme appTheme;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          side: BorderSide(color: appTheme.neutralLight, width: 1),
        ),
        minimumSize: Size(appTheme.screenWidth, 46.8),
        padding: const EdgeInsets.symmetric(horizontal: 16),
      ),
      child: Row(
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 25, maxWidth: 25),
            child: Image.asset("assets/images/logo/google.png"),
          ),
          Expanded(
            child: Center(
              child: Text(
                "Login with Google",
                style: appTheme.bodyMediumBold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FacebookButton extends StatelessWidget {
  const FacebookButton({
    super.key,
    required this.appTheme,
  });

  final AppTheme appTheme;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          side: BorderSide(color: appTheme.neutralLight, width: 1),
        ),
        minimumSize: Size(appTheme.screenWidth, 46.8),
        padding: const EdgeInsets.symmetric(horizontal: 16),
      ),
      child: Row(
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 25, maxWidth: 25),
            child: Image.asset("assets/images/logo/facebook.png"),
          ),
          Expanded(
            child: Center(
              child: Text(
                "Login with facebook",
                style: appTheme.bodyMediumBold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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
