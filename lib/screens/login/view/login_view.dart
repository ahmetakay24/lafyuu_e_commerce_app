import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce_app/core/widgets/buttons/app_buttons.dart';
import 'package:lafyuu_e_commerce_app/theme/app_theme.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key, required this.appTheme});

  final AppTheme appTheme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(
                flex: 112,
              ),
              Expanded(flex: 72, child: Image.asset("assets/images/logo/lafyuu_icon.png")),
              const Spacer(
                flex: 16,
              ),
              Text(
                "Welcome to Lafyuu",
                style: appTheme.heading4.copyWith(color: appTheme.neutralDark),
              ),
              const Spacer(
                flex: 8,
              ),
              Text(
                "Sign in to continue",
                style: appTheme.bodyNormalRegular,
              ),
              const Spacer(
                flex: 28,
              ),
              Expanded(
                  flex: 48,
                  child: TextFormField(
                    cursorColor: appTheme.primaryBlue,
                    decoration: InputDecoration(
                      hintText: "Your Email",
                      prefixIcon: const Icon(
                        Icons.email_outlined,
                      ),
                      prefixIconColor: WidgetStateColor.resolveWith((states) =>
                          states.contains(WidgetState.focused) ? appTheme.primaryBlue : appTheme.neutralGrey),
                    ),
                  )),
              const Spacer(
                flex: 8,
              ),
              Expanded(
                  flex: 48,
                  child: TextFormField(
                    cursorColor: appTheme.primaryBlue,
                    decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: const Icon(
                        Icons.lock_outline,
                      ),
                      prefixIconColor: WidgetStateColor.resolveWith((states) =>
                          states.contains(WidgetState.focused) ? appTheme.primaryBlue : appTheme.neutralGrey),
                    ),
                  )),
              const Spacer(
                flex: 16,
              ),
              Expanded(
                flex: 57,
                child: LargePrimaryButton(
                  appTheme: appTheme,
                  buttonText: "Sign In",
                  onPressed: () {},
                ),
              ),
              const Spacer(
                flex: 21,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Divider(
                      thickness: 1,
                      height: 1,
                      color: appTheme.neutralLight,
                    ),
                  ),
                  const Spacer(),
                  Expanded(
                    child: Center(
                      child: Text(
                        "OR",
                        style: appTheme.bodyMediumBold,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Expanded(
                    flex: 5,
                    child: Divider(
                      thickness: 1,
                      height: 1,
                      color: appTheme.neutralLight,
                    ),
                  )
                ],
              ),
              const Spacer(
                flex: 16,
              ),
              Expanded(flex: 57, child: GoogleButton(appTheme: appTheme)),
              const Spacer(
                flex: 8,
              ),
              Expanded(flex: 57, child: FacebookButton(appTheme: appTheme)),
              const Spacer(
                flex: 16,
              ),
              Text(
                "Forgot Password?",
                style: appTheme.linkText,
              ),
              const Spacer(
                flex: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Don’t have a account?", style: appTheme.bodyNormalRegular),
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Text(
                      "Register",
                      style: appTheme.bodyNormalBold.copyWith(color: appTheme.primaryBlue),
                    ),
                  )
                ],
              ),
              const Spacer(
                flex: 113,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
