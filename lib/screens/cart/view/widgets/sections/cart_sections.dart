import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lafyuu_e_commerce_app/core/functions/app_functions.dart';
import 'package:lafyuu_e_commerce_app/core/widgets/sections/app_sections.dart';
import 'package:lafyuu_e_commerce_app/theme/app_theme.dart';

class PriceDetailsSection extends StatelessWidget {
  const PriceDetailsSection({
    super.key,
    required this.appTheme,
  });

  final AppTheme appTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

class CartListView extends StatelessWidget {
  const CartListView({
    super.key,
    required this.appTheme,
  });

  final AppTheme appTheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: appTheme.heightDynamicPadding16, bottom: appTheme.heightDynamicPadding16),
      child: ListView(
        children: [
          cartProductContainer(
              appTheme, "Nike Air Zoom Pegasus 36 Miami", "assets/images/product_pictures/air_max_270.png", "299,43"),
          cartProductContainer(
              appTheme, "Nike Air Zoom Pegasus 36 Miami", "assets/images/product_pictures/air_max_270.png", "299,43"),
          cartProductContainer(
              appTheme, "Nike Air Zoom Pegasus 36 Miami", "assets/images/product_pictures/air_max_270.png", "299,43"),
          cartProductContainer(
              appTheme, "Nike Air Zoom Pegasus 36 Miami", "assets/images/product_pictures/air_max_270.png", "299,43"),
        ],
      ),
    );
  }

  Widget cartProductContainer(AppTheme appTheme, String title, String imagePath, String price) {
    //Padding i seperatorBuilde ile değiştiricem
    return Padding(
      padding: EdgeInsets.only(bottom: appTheme.heightDynamicPadding16),
      child: SizedBox(
        height: sizeCalculator(appTheme.screenHeight, 12.80),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: appTheme.neutralLight),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: appTheme.heightDynamicPadding16),
            child: Row(
              children: [
                const Spacer(flex: 16),
                Expanded(
                  flex: 72,
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
                const Spacer(flex: 12),
                Expanded(
                  flex: 227,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 36,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 158,
                              child: Text(
                                title,
                                maxLines: 2,
                                style: appTheme.heading6.copyWith(color: appTheme.neutralDark),
                              ),
                            ),
                            const Spacer(flex: 13),
                            Expanded(
                              flex: 24,
                              child: Image.asset("assets/images/icons/love.png"),
                            ),
                            const Spacer(flex: 8),
                            Expanded(
                              flex: 24,
                              child: Image.asset("assets/images/icons/notification.png"),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(flex: 12),
                      Expanded(
                        flex: 24,
                        child: Row(
                          children: [
                            Text(
                              "\$$price",
                              style: appTheme.heading6.copyWith(color: appTheme.primaryBlue),
                            ),
                            const Spacer(flex: 71),
                            Expanded(
                              flex: 104,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: appTheme.neutralLight),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      flex: 32,
                                      child: Icon(
                                        Icons.remove,
                                        size: 16.sp,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 40,
                                      child: Container(
                                        color: appTheme.neutralLight,
                                        child: const Text(
                                          "1",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 32,
                                      child: Icon(
                                        Icons.add,
                                        size: 16.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(flex: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}