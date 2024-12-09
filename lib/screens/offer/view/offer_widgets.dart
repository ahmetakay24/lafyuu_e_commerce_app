import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce_app/core/widgets/sections/app_sections.dart';
import 'package:lafyuu_e_commerce_app/screens/main_screen/view/widgets/listviews/main_screen_list_views.dart';
import 'package:lafyuu_e_commerce_app/screens/offer/view/widgets/offer_view_widgets.dart';
import 'package:lafyuu_e_commerce_app/theme/app_theme.dart';

class OfferView extends StatelessWidget {
  const OfferView({super.key, required this.appTheme});

  final AppTheme appTheme;

  @override
  Widget build(BuildContext context) {
    final List<String> promotionBanners = [
      "https://i.hizliresim.com/kq0btan.png",
      "https://i.hizliresim.com/7exsrrd.png"
    ];

    return Scaffold(
      appBar: TitleAppBar(appTheme: appTheme, title: "Offer"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: appTheme.widthDynamicPadding16),
        child: ListView(
          children: [
            Padding(
                padding: EdgeInsets.symmetric(vertical: appTheme.heightDynamicPadding16),
                child: CuponCodeContainer(appTheme: appTheme)),
            Padding(
              padding: EdgeInsets.only(bottom: appTheme.heightDynamicPadding16),
              child: AspectRatio(
                  aspectRatio: 343 / 206,
                  child: FlashSaleBanner(promotionBanners: promotionBanners, appTheme: appTheme)),
            ),
            SuperMegaSaleBanner(appTheme: appTheme)
          ],
        ),
      ),
    );
  }
}
