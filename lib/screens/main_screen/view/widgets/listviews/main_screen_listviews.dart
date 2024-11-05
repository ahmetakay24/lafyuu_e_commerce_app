import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce_app/core/functions/app_functions.dart';
import 'package:lafyuu_e_commerce_app/core/widgets/buttons/app_buttons.dart';
import 'package:lafyuu_e_commerce_app/theme/app_theme.dart';

class PromotionBannerPageView extends StatelessWidget {
  const PromotionBannerPageView({
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
    return AspectRatio(
      aspectRatio: 343 / 206,
      child: PageView(
        controller: controller,
        children: [
          Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: CachedNetworkImage(
                  imageUrl: promotionBanners.first,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: appTheme.heightDynamicPadding16 * 2, left: appTheme.widthDynamicPadding16 * 1.5),
                child: Text(
                  "Super Flash Sale \n%50 Off",
                  style: appTheme.heading2.copyWith(color: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: appTheme.widthDynamicPadding16 * 1.5, top: sizeCalculator(appTheme.screenHeight, 16.37)),
                child: SizedBox(
                  height: sizeCalculator(appTheme.screenHeight, 5.04),
                  width: sizeCalculator(appTheme.screenWidth, 39.99),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 41,
                          child: Container(
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                              "08",
                              style: appTheme.heading4.copyWith(color: appTheme.neutralDark),
                            )),
                          )),
                      const Expanded(
                          flex: 12,
                          child: Column(
                            children: [
                              Spacer(
                                flex: 3,
                              ),
                              Expanded(
                                  child: CircleAvatar(
                                backgroundColor: Colors.white,
                              )),
                              Spacer(),
                              Expanded(
                                  child: CircleAvatar(
                                backgroundColor: Colors.white,
                              )),
                              Spacer(
                                flex: 3,
                              )
                            ],
                          )),
                      Expanded(
                          flex: 41,
                          child: Container(
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                              "34",
                              style: appTheme.heading4.copyWith(color: appTheme.neutralDark),
                            )),
                          )),
                      const Expanded(
                          flex: 12,
                          child: Column(
                            children: [
                              Spacer(
                                flex: 3,
                              ),
                              Expanded(
                                  child: CircleAvatar(
                                backgroundColor: Colors.white,
                              )),
                              Spacer(),
                              Expanded(
                                  child: CircleAvatar(
                                backgroundColor: Colors.white,
                              )),
                              Spacer(
                                flex: 3,
                              )
                            ],
                          )),
                      Expanded(
                          flex: 41,
                          child: Container(
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                              "52",
                              style: appTheme.heading4.copyWith(color: appTheme.neutralDark),
                            )),
                          )),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
    required this.appTheme,
  });

  final AppTheme appTheme;

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        CategoriesListViewButton(title: "Man Shirt", iconPath: "assets/images/icons/tshirt.png", appTheme: appTheme),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child:
              CategoriesListViewButton(title: "Dress", iconPath: "assets/images/icons/dress.png", appTheme: appTheme),
        ),
        CategoriesListViewButton(
            title: "Man Work Equipment", iconPath: "assets/images/icons/man_bag.png", appTheme: appTheme),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: CategoriesListViewButton(
              title: "Woman Bag", iconPath: "assets/images/icons/woman_bag.png", appTheme: appTheme),
        ),
        CategoriesListViewButton(title: "Man Shoes", iconPath: "assets/images/icons/man_shoes.png", appTheme: appTheme),
      ],
    );
  }
}

class SaleProductListView extends StatelessWidget {
  const SaleProductListView({
    super.key,
    required this.appTheme,
  });

  final AppTheme appTheme;

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        buildFlashSaleCard(appTheme, "FS - Nike Air Max 270 React", 299.43, 534.33, 24,
            "assets/images/product_pictures/air_max_270.png"),
        buildFlashSaleCard(
            appTheme, "FS - QUILTED MAXI CROS", 299.43, 534.33, 24, "assets/images/product_pictures/quilted.png"),
        buildFlashSaleCard(appTheme, "FS - Nike Air Max 270 React", 299.43, 534.33, 24,
            "assets/images/product_pictures/air_max_270.png"),
      ],
    );
  }

  Widget buildFlashSaleCard(AppTheme appTheme, String productName, double price, double discountedPrice,
      int discountRatio, String productImagePath) {
    return SizedBox(
      height: sizeCalculator(appTheme.screenHeight, 29.31),
      width: sizeCalculator(appTheme.screenWidth, 37.59),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: appTheme.neutralLight, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: appTheme.widthDynamicPadding16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(flex: 16),
                Expanded(
                  flex: 109,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        productImagePath,
                        fit: BoxFit.fill,
                      ),
                    ],
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
                      style: appTheme.captionLargeRegular10
                          .copyWith(color: appTheme.neutralGrey, decoration: TextDecoration.lineThrough),
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
            const Spacer(flex: 4),
            Expanded(
                flex: 12,
                child: Row(
                  children: [
                    Icon(Icons.star, color: appTheme.primaryYellow, size: 16),
                    Icon(Icons.star, color: appTheme.primaryYellow, size: 16),
                    Icon(Icons.star, color: appTheme.primaryYellow, size: 16),
                    Icon(Icons.star, color: appTheme.primaryYellow, size: 16),
                    Icon(Icons.star_border, color: appTheme.primaryYellow, size: 16),
                  ],
                )),
            const Spacer(
              flex: 16,
            ),
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
