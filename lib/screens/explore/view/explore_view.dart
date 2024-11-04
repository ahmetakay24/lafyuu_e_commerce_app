import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce_app/core/widgets/sections/app_sections.dart';
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
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                Text("Man Fashion", style: appTheme.heading5.copyWith(color: appTheme.neutralDark)),
                const Spacer(),
                Expanded(
                  child: GridView(
                    scrollDirection: Axis.horizontal,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.75,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    children: const [
                      // Karlar eklenecek
                      Card(),
                    ],
                  ),
                ),
              ],
            )),
            const Expanded(child: Column())
          ],
        ),
      ),
    );
  }
}
