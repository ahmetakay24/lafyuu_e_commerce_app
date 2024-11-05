import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce_app/theme/app_theme.dart';

class CartView extends StatelessWidget {
  const CartView({super.key, required this.appTheme});

  final AppTheme appTheme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Your Cart", style: appTheme.heading4.copyWith(color: appTheme.neutralDark)),
          ],
        ),
        shape: Border(bottom: BorderSide(color: appTheme.neutralLight, width: 1)),
      ),
    );
  }
}
