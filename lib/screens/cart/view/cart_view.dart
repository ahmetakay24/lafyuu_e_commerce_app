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
                child: Container(
                  decoration: const BoxDecoration(shape: BoxShape.rectangle),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 256,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 10),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      const Expanded(
                          flex: 87,
                          child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(5),
                                bottomRight: Radius.circular(5),
                              ),
                              child: ElevatedButton(onPressed: null, child: Text("Apply"))))
                    ],
                  ),
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
