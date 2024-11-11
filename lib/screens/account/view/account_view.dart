import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lafyuu_e_commerce_app/core/widgets/sections/app_sections.dart';
import 'package:lafyuu_e_commerce_app/theme/app_theme.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key, required this.appTheme});

  final AppTheme appTheme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TitleAppBar(appTheme: appTheme, title: "Account"),
      body: Column(
        children: [
          buildListTile(
            iconPath: "/Users/ahmet/Documents/Projects/lafyuu_e_commerce_app/assets/images/icons/user.png",
            title: "Profile",
          ),
          buildListTile(
            iconPath: "/Users/ahmet/Documents/Projects/lafyuu_e_commerce_app/assets/images/icons/bag.png",
            title: "Order",
          ),
          buildListTile(
            iconPath: "/Users/ahmet/Documents/Projects/lafyuu_e_commerce_app/assets/images/icons/location.png",
            title: "Address",
          ),
          buildListTile(
            iconPath: "/Users/ahmet/Documents/Projects/lafyuu_e_commerce_app/assets/images/icons/credit_card.png",
            title: "Payment",
          ),
        ],
      ),
    );
  }

  Widget buildListTile({required String iconPath, required String title}) {
    return ListTile(
      leading: Image.asset(
        iconPath,
        width: 24.sp,
        height: 24.sp,
      ),
      title: Text(
        title,
        style: appTheme.heading5.copyWith(color: appTheme.neutralDark),
      ),
    );
  }
}
