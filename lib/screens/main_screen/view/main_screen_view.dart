import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lafyuu_e_commerce_app/core/functions/app_functions.dart';
import 'package:lafyuu_e_commerce_app/theme/app_theme.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Category",
                            style: appTheme.heading5.copyWith(color: appTheme.neutralDark),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              "More Category",
                              style: appTheme.linkText,
                            ),
                          )
                        ],
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 375 / 108,
                      child: CategoriesListView(appTheme: appTheme),
                    ),
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

class CategoriesListViewButton extends StatelessWidget {
  const CategoriesListViewButton({
    super.key,
    required this.appTheme,
    required this.iconPath,
    required this.title,
  });

  final AppTheme appTheme;
  final String iconPath;
  final String title;

  @override
  Widget build(BuildContext context) {
    final buttonHeight = sizeCalculator(appTheme.screenHeight, 13.30);
    final buttonWidth = sizeCalculator(appTheme.screenWidth, 18.66);

    return SizedBox(
      height: buttonHeight,
      width: buttonWidth,
      child: Column(
        children: [
          Expanded(
            flex: 70,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: appTheme.neutralLight), // Kenarları siyah
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Image.asset(
                  iconPath,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
          ),
          const Spacer(
            flex: 5,
          ),
          Expanded(
              flex: 33,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: appTheme.captionLargeRegular10,
              ))
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
                child: Image.network(
                  promotionBanners.first,
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
