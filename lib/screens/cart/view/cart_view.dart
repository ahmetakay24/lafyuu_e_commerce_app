import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce_app/core/functions/app_functions.dart';
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
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(color: appTheme.neutralLight),
                              left: BorderSide(color: appTheme.neutralLight),
                              bottom: BorderSide(color: appTheme.neutralLight),
                            ),
                          ),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(left: 10),
                              hintText: "Enter Cupon Code",
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
                      ),
                      Expanded(
                        flex: 87,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 64, 191, 255),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: sizeCalculator(appTheme.screenHeight, 1.52)),
                            child: Text(
                              "Apply",
                              style: appTheme.bodyNormalBold.copyWith(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
            const Spacer(
              flex: 16,
            ),
            Expanded(
                flex: 164,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: appTheme.neutralLight),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: appTheme.widthDynamicPadding16),
                    child: Column(
                      children: [
                        const Spacer(
                          flex: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Items (2)", style: appTheme.bodyNormalRegular),
                            Text(
                              "\$598.86",
                              style: appTheme.bodyNormalRegular.copyWith(color: appTheme.neutralDark),
                            )
                          ],
                        ),
                        const Spacer(
                          flex: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Shipping", style: appTheme.bodyNormalRegular),
                            Text(
                              "\$40.00",
                              style: appTheme.bodyNormalRegular.copyWith(color: appTheme.neutralDark),
                            )
                          ],
                        ),
                        const Spacer(
                          flex: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Import charges", style: appTheme.bodyNormalRegular),
                            Text(
                              "\$128.00",
                              style: appTheme.bodyNormalRegular.copyWith(color: appTheme.neutralDark),
                            )
                          ],
                        ),
                        const Spacer(
                          flex: 12,
                        ),
                        BrokenLine(color: appTheme.neutralLight),
                        const Spacer(
                          flex: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Total Price", style: appTheme.heading6.copyWith(color: appTheme.neutralDark)),
                            Text(
                              "\$766.86",
                              style: appTheme.bodyNormalRegular.copyWith(color: appTheme.primaryBlue),
                            )
                          ],
                        ),
                        const Spacer(
                          flex: 16,
                        ),
                      ],
                    ),
                  ),
                )),
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

class BrokenLine extends StatelessWidget {
  const BrokenLine({super.key, this.height = 1, this.color = Colors.black});
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        const dashWidth = 10.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
        );
      },
    );
  }
}
