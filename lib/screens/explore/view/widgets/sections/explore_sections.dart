import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce_app/core/widgets/buttons/app_buttons.dart';
import 'package:lafyuu_e_commerce_app/theme/app_theme.dart';

class ExploreFashionCategoriesSection extends StatelessWidget {
  const ExploreFashionCategoriesSection({
    super.key,
    required this.appTheme,
    required this.categories,
    required this.title,
  });

  final AppTheme appTheme;
  final String title;
  final List<CategoriesListViewButton> categories;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Spacer(
          flex: 16,
        ),
        Text(title, style: appTheme.heading5.copyWith(color: appTheme.neutralDark)),
        const Spacer(
          flex: 12,
        ),
        Expanded(
          flex: 232,
          child: GridView(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 70 / 108,
            ),
            children: categories,
          ),
        ),
      ],
    );
  }
}
