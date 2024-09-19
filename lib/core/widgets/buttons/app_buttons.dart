import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce_app/theme/app_theme.dart';
import 'package:flutter/widgets.dart'; // Added import for WidgetStateProperty

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
        backgroundColor: Colors.blue,
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
              return Colors.blue.withOpacity(0.8);
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
              backgroundColor: Colors.blue,
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
              return Colors.blue.withOpacity(0.8);
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
