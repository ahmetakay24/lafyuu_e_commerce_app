import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce_app/theme/app_theme.dart';

class SearchProductAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SearchProductAppBar({
    super.key,
    required this.appTheme,
  });

  final AppTheme appTheme;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      scrolledUnderElevation: 0,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      title: Row(
        children: [
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
        ],
      ),
    );
  }
}

class TitleAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TitleAppBar({
    super.key,
    required this.appTheme, required this.title,
  });

  final AppTheme appTheme;
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(title, style: appTheme.heading4.copyWith(color: appTheme.neutralDark)),
        ],
      ),
      shape: Border(bottom: BorderSide(color: appTheme.neutralLight, width: 1)),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class BrokenLine extends StatelessWidget {
  const BrokenLine({super.key, this.height = 1, this.color = Colors.black});
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        const dashWidth = 10.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
        );
      },
    );
  }
}