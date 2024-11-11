import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce_app/theme/app_theme.dart';

class SuperMegaSaleBanner extends StatelessWidget {
  const SuperMegaSaleBanner({
    super.key,
    required this.appTheme,
  });

  final AppTheme appTheme;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 343 / 206,
        child: Container(
          decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage("assets/images/promotion_images/recommended_product_banner.png"),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding:
                EdgeInsets.only(top: appTheme.heightDynamicPadding16 * 2, left: appTheme.widthDynamicPadding24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "90% Off Super Mega \nSale",
                  style: appTheme.heading2.copyWith(color: Colors.white),
                ),
                Padding(
                  padding: EdgeInsets.only(top: appTheme.heightDynamicPadding16),
                  child: Text("Special birthday Lafyuu",
                      style: appTheme.bodyNormalRegular.copyWith(color: Colors.white)),
                )
              ],
            ),
          ),
        ));
  }
}

class CuponCodeContainer extends StatelessWidget {
  const CuponCodeContainer({
    super.key,
    required this.appTheme,
  });

  final AppTheme appTheme;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 343 / 80,
      child: Container(
        decoration: BoxDecoration(
          color: appTheme.primaryBlue,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
            child: Text(
          "Use “MEGSL” Cupon For Get 90% off",
          style: appTheme.heading4.copyWith(color: Colors.white),
        )),
      ),
    );
  }
}
