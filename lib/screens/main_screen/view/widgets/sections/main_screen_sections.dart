import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce_app/core/functions/app_functions.dart';
import 'package:lafyuu_e_commerce_app/theme/app_theme.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainScreenAppBar extends StatelessWidget {
  const MainScreenAppBar({
    super.key,
    required this.appTheme,
  });

  final AppTheme appTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeCalculator(appTheme.screenHeight, 9.60),
      child: Column(
        children: [
          const Spacer(
            flex: 16,
          ),
          Expanded(
            flex: 46,
            child: Row(
              children: [
                const Spacer(
                  flex: 16,
                ),
                Expanded(
                    flex: 263,
                    child: TextFormField(
                      cursorColor: appTheme.primaryBlue,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          hintText: "Search Product",
                          prefixIconColor: appTheme.primaryBlue),
                    )),
                const Spacer(
                  flex: 16,
                ),
                Expanded(flex: 24, child: Image.asset("assets/images/icons/love.png")),
                const Spacer(
                  flex: 16,
                ),
                Expanded(flex: 24, child: Image.asset("assets/images/icons/notification.png")),
                const Spacer(
                  flex: 16,
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 16,
          ),
        ],
      ),
    );
  }
}

class PromotionBannerPageIndicator extends StatelessWidget {
  const PromotionBannerPageIndicator({
    super.key,
    required this.controller,
    required this.promotionBanners,
    required this.appTheme,
  });

  final PageController controller;
  final List<String> promotionBanners;
  final AppTheme appTheme;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SmoothPageIndicator(
        controller: controller,
        count: promotionBanners.length,
        axisDirection: Axis.horizontal,
        effect: SlideEffect(
            spacing: appTheme.widthDynamicPadding16 / 2,
            radius: 4.0,
            dotWidth: 8.0,
            dotHeight: 8.0,
            paintStyle: PaintingStyle.stroke,
            strokeWidth: 1.5,
            dotColor: appTheme.neutralLight,
            activeDotColor: appTheme.primaryBlue),
      ),
    );
  }
}

class RecomendedProductBanner extends StatelessWidget {
  const RecomendedProductBanner({
    super.key,
    required this.appTheme,
  });

  final AppTheme appTheme;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "assets/images/promotion_images/recommended_product_banner.png",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: appTheme.heightDynamicPadding24 * 2, left: appTheme.widthDynamicPadding24),
            child: Text(
              "Recomended\nProduct",
              style: appTheme.heading2.copyWith(color: Colors.white),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: appTheme.heightDynamicPadding24 * 5.5, left: appTheme.widthDynamicPadding24),
            child: Text(
              "We recommend the best for you",
              style: appTheme.bodyMediumRegular.copyWith(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

class SeeMoreHeaderSection extends StatelessWidget {
  const SeeMoreHeaderSection({
    super.key,
    required this.appTheme,
    required this.headerText,
    required this.moreButtonText,
    required this.moreButtonFunction,
  });

  final AppTheme appTheme;
  final String headerText;
  final String moreButtonText;
  final VoidCallback moreButtonFunction;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          headerText,
          style: appTheme.heading5.copyWith(color: appTheme.neutralDark),
        ),
        InkWell(
          onTap: moreButtonFunction,
          child: Text(
            moreButtonText,
            style: appTheme.linkText,
          ),
        )
      ],
    );
  }
}