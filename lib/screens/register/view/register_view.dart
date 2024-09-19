import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce_app/core/widgets/buttons/app_buttons.dart';
import 'package:lafyuu_e_commerce_app/theme/app_theme.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key, required this.appTheme});

  final AppTheme appTheme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Column(
            children: [
              const Spacer(
                flex: 155,
              ),
              Expanded(flex: 72, child: Image.asset("assets/images/logo/lafyuu_icon.png")),
              const Spacer(
                flex: 16,
              ),
              Expanded(
                  flex: 24,
                  child: Text(
                    "Let’s Get Started",
                    style: appTheme.heading4.copyWith(color: appTheme.neutralDark),
                  )),
              const Spacer(
                flex: 8,
              ),
              Expanded(
                  flex: 22,
                  child: Text(
                    "Create an new account",
                    style: appTheme.bodyNormalRegular,
                  )),
              const Spacer(
                flex: 28,
              ),
              Expanded(
                  flex: 48,
                  child: TextFormField(
                    cursorColor: appTheme.primaryBlue,
                    decoration: InputDecoration(
                      hintText: "Full Name",
                      prefixIcon: const Icon(
                        Icons.person_2_outlined,
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
                flex: 8,
              ),
              Expanded(
                  flex: 48,
                  child: TextFormField(
                    cursorColor: appTheme.primaryBlue,
                    decoration: InputDecoration(
                      hintText: "Password Again",
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
                  flex: 57, child: LargePrimaryButton(appTheme: appTheme, buttonText: "Sign Up", onPressed: () {})),
              const Spacer(
                flex: 24,
              ),
              Expanded(
                  flex: 24,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("have a account?", style: appTheme.bodyNormalRegular),
                      Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Text(
                          "Sign In",
                          style: appTheme.bodyNormalBold.copyWith(color: appTheme.primaryBlue),
                        ),
                      )
                    ],
                  )),
              const Spacer(
                flex: 149,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
