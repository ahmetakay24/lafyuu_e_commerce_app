import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce_app/core/widgets/buttons/app_buttons.dart';
import 'package:lafyuu_e_commerce_app/core/widgets/sections/app_sections.dart';
import 'package:lafyuu_e_commerce_app/screens/explore/view/widgets/sections/explore_sections.dart';
import 'package:lafyuu_e_commerce_app/theme/app_theme.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key, required this.appTheme});

  final AppTheme appTheme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchProductAppBar(appTheme: appTheme),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: appTheme.widthDynamicPadding16),
        child: Column(
          children: [
            Expanded(
                child: ExploreFashionCategoriesSection(
              title: "Man Fashion",
              appTheme: appTheme,
              categories: [
                CategoriesListViewButton(
                    appTheme: appTheme, iconPath: "assets/images/icons/shirt.png", title: "Man Shirt"),
                CategoriesListViewButton(
                    appTheme: appTheme, iconPath: "assets/images/icons/man_bag.png", title: "Man Work Equipment"),
                CategoriesListViewButton(
                    appTheme: appTheme, iconPath: "assets/images/icons/tshirt.png", title: "Man T-Shirt"),
                CategoriesListViewButton(
                    appTheme: appTheme, iconPath: "assets/images/icons/man_shoes.png", title: "Man Shoes"),
                CategoriesListViewButton(
                    appTheme: appTheme, iconPath: "assets/images/icons/man_pants.png", title: "Man Pants"),
                CategoriesListViewButton(
                    appTheme: appTheme, iconPath: "assets/images/icons/man_underwear.png", title: "Man Underwear"),
              ],
            )),
            Expanded(
                child: ExploreFashionCategoriesSection(
                    appTheme: appTheme,
                    categories: [
                      CategoriesListViewButton(
                          appTheme: appTheme, iconPath: "assets/images/icons/dress.png", title: "Dress"),
                      CategoriesListViewButton(
                          appTheme: appTheme, iconPath: "assets/images/icons/woman_tshirt.png", title: "Woman T-Shirt"),
                      CategoriesListViewButton(
                          appTheme: appTheme, iconPath: "assets/images/icons/woman_pants.png", title: "Woman Pants"),
                      CategoriesListViewButton(
                          appTheme: appTheme, iconPath: "assets/images/icons/skirt.png", title: "Skirt"),
                      CategoriesListViewButton(
                          appTheme: appTheme, iconPath: "assets/images/icons/woman_pants.png", title: "Woman Bag"),
                      CategoriesListViewButton(
                          appTheme: appTheme, iconPath: "assets/images/icons/woman_shoes.png", title: "High Heels"),
                      CategoriesListViewButton(
                          appTheme: appTheme, iconPath: "assets/images/icons/bikini.png", title: "Bikini"),
                    ],
                    title: "Woman Fashion")),
          ],
        ),
      ),
    );
  }
}
