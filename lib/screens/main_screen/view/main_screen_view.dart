import 'package:flutter/material.dart';
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
      body: SafeArea(
        child: Column(
          children: [
            MainScreenAppBar(appTheme: appTheme),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                    left: appTheme.widthDynamicPadding16,
                    right: appTheme.widthDynamicPadding16,
                    top: appTheme.heightDynamicPadding16),
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

class MainScreenProductsGridView extends StatelessWidget {
  const MainScreenProductsGridView({
    super.key,
    required this.appTheme,
  });

  final AppTheme appTheme;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 165 / 282,
      crossAxisCount: 2,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        buildFlashSaleCard(appTheme, "Nike Air Max 270 React ENG", 299.43, 534.33, 24,
            "assets/images/product_pictures/air_max_270_eng.png"),
        buildFlashSaleCard(appTheme, "Nike Air Max 270 React ENG", 299.43, 534.33, 24,
            "assets/images/product_pictures/air_max_270_eng.png"),
        buildFlashSaleCard(appTheme, "Nike Air Max 270 React ENG", 299.43, 534.33, 24,
            "assets/images/product_pictures/air_max_270_eng.png"),
        buildFlashSaleCard(appTheme, "Nike Air Max 270 React ENG", 299.43, 534.33, 24,
            "assets/images/product_pictures/air_max_270_eng.png"),
      ],
    );
  }

  
  //Yıldız bölümü eklenicek

  Widget buildFlashSaleCard(AppTheme appTheme, String productName, double price, double discountedPrice,
      int discountRatio, String productImagePath) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: appTheme.neutralLight, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: appTheme.widthDynamicPadding16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(flex: 16),
            Expanded(
              flex: 109,
              child: Center(
                child: Image.asset(
                  productImagePath,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const Spacer(flex: 8),
            Text(
              productName,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: appTheme.heading6.copyWith(color: appTheme.neutralDark),
            ),
            const Spacer(flex: 8),
            Text(
              "\$$price",
              style: appTheme.bodyNormalBold.copyWith(color: appTheme.primaryBlue),
            ),
            const Spacer(flex: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$$discountedPrice",
                  style: appTheme.captionLargeRegular10.copyWith(
                    color: appTheme.neutralGrey,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                Text(
                  "%$discountRatio Off",
                  style: appTheme.captionLargeBold10.copyWith(color: appTheme.primaryRed),
                ),
              ],
            ),
            const Spacer(flex: 16),
          ],
        ),
      ),
    );
  }
}

