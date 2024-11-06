import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce_app/core/widgets/buttons/app_buttons.dart';
import 'package:lafyuu_e_commerce_app/theme/app_theme.dart';

class CartView extends StatelessWidget {
  const CartView({super.key, required this.appTheme});

  final AppTheme appTheme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Your Cart", style: appTheme.heading4.copyWith(color: appTheme.neutralDark)),
          ],
        ),
        shape: Border(bottom: BorderSide(color: appTheme.neutralLight, width: 1)),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: appTheme.widthDynamicPadding16),
        child: Column(
          children: [
            Expanded(flex: 272, child: ListView()),
            Expanded(
                flex: 56,
                child: Row(
                  children: [
                    Expanded(
                        flex: 256,
                        //Enter Cupon kısmını bağlaman lazım
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: "Enter Cupon Code",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    bottomLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(0),
                                    bottomRight: Radius.circular(0)),
                              )),
                        )),
                    Expanded(
                        flex: 87, child: SmallPrimaryButton(appTheme: appTheme, buttonText: "Apply", onPressed: () {}))
                  ],
                )),
            const Spacer(
              flex: 16,
            ),
            const Expanded(flex: 164, child: Placeholder()),
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
