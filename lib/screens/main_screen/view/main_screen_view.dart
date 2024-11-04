import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce_app/core/widgets/sections/app_sections.dart';
import 'package:lafyuu_e_commerce_app/screens/main_screen/view/widgets/listviews/main_screen_listviews.dart';
import 'package:lafyuu_e_commerce_app/screens/main_screen/view/widgets/sections/main_screen_sections.dart';
import 'package:lafyuu_e_commerce_app/theme/app_theme.dart';

class MainScreenView extends StatelessWidget {
  const MainScreenView({super.key, required this.appTheme});

  final AppTheme appTheme;

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    final List<String> promotionBanners = [
      "https://i.hizliresim.com/kq0btan.png",
      "https://i.hizliresim.com/7exsrrd.png"
    ];

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: SearchProductAppBar(appTheme: appTheme),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: appTheme.widthDynamicPadding16, vertical: appTheme.heightDynamicPadding16),
                child: ListView(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: appTheme.heightDynamicPadding16),
                      child: PromotionBannerPageView(
                          controller: controller, promotionBanners: promotionBanners, appTheme: appTheme),
                    ),
                    PromotionBannerPageIndicator(
                        controller: controller, promotionBanners: promotionBanners, appTheme: appTheme),
                    Padding(
                      padding: EdgeInsets.only(
                          top: appTheme.widthDynamicPadding16 * 1.5, bottom: appTheme.heightDynamicPadding16 * 0.75),
                      child: SeeMoreHeaderSection(
                        appTheme: appTheme,
                        headerText: "Category",
                        moreButtonText: "More Category",
                        moreButtonFunction: () {},
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 375 / 108,
                      child: CategoriesListView(appTheme: appTheme),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: appTheme.widthDynamicPadding24, bottom: appTheme.heightDynamicPadding12),
                      child: SeeMoreHeaderSection(
                        appTheme: appTheme,
                        headerText: "Flash Sale",
                        moreButtonText: "See More",
                        moreButtonFunction: () {},
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 375 / 250,
                      child: SaleProductListView(appTheme: appTheme),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: appTheme.widthDynamicPadding24, bottom: appTheme.heightDynamicPadding12),
                      child: SeeMoreHeaderSection(
                        appTheme: appTheme,
                        headerText: "Mega Sale",
                        moreButtonText: "See More",
                        moreButtonFunction: () {},
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: appTheme.heightDynamicPadding8),
                      child: AspectRatio(
                        aspectRatio: 375 / 250,
                        child: SaleProductListView(appTheme: appTheme),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: appTheme.heightDynamicPadding16),
                      child: AspectRatio(
                        aspectRatio: 375 / 206,
                        child: RecomendedProductBanner(appTheme: appTheme),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 375 / 650,
                      child: MainScreenProductsGridView(appTheme: appTheme),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
