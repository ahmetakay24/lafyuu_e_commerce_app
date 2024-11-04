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
