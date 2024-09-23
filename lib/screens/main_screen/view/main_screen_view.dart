import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lafyuu_e_commerce_app/core/functions/app_functions.dart';
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
                      child: AspectRatio(
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
                                      top: appTheme.heightDynamicPadding16 * 2,
                                      left: appTheme.widthDynamicPadding16 * 1.5),
                                  child: Text(
                                    "Super Flash Sale \n%50 Off",
                                    style: appTheme.heading2.copyWith(color: Colors.white),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: appTheme.widthDynamicPadding16 * 1.5,
                                      top: sizeCalculator(appTheme.screenHeight, 16.37)),
                                  child: SizedBox(
                                    height: sizeCalculator(appTheme.screenHeight, 5.04),
                                    width: sizeCalculator(appTheme.screenWidth, 39.99),
                                    child: Row(
                                      children: [
                                        Expanded(
                                            flex: 41,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
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
                                              decoration: BoxDecoration(
                                                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
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
                                              decoration: BoxDecoration(
                                                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
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
                      ),
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
