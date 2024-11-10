import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce_app/core/widgets/buttons/app_buttons.dart';
import 'package:lafyuu_e_commerce_app/core/widgets/sections/app_sections.dart';
import 'package:lafyuu_e_commerce_app/screens/cart/view/widgets/sections/cart_sections.dart';
import 'package:lafyuu_e_commerce_app/screens/cart/view/widgets/text_fields/cart_text_fields.dart';
import 'package:lafyuu_e_commerce_app/theme/app_theme.dart';

class CartView extends StatelessWidget {
  const CartView({super.key, required this.appTheme});

  final AppTheme appTheme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TitleAppBar(title: "Your Cart", appTheme: appTheme),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: appTheme.widthDynamicPadding16),
        child: Column(
          children: [
            Expanded(flex: 272, child: CartListView(appTheme: appTheme)),
            Expanded(flex: 56, child: EnterCuponCodeTextField(appTheme: appTheme)),
            const Spacer(
              flex: 16,
            ),
            Expanded(
                flex: 164,
                child: PriceDetailsSection(appTheme: appTheme)),
            const Spacer(
              flex: 16,
            ),
            Expanded(
                flex: 56, child: LargePrimaryButton(appTheme: appTheme, buttonText: "Check Out", onPressed: () {})),
            const Spacer(
              flex: 16,
            )
          ],
        ),
      ),
    );
  }
}




