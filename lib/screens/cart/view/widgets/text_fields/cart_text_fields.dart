import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce_app/core/functions/app_functions.dart';
import 'package:lafyuu_e_commerce_app/theme/app_theme.dart';

class EnterCuponCodeTextField extends StatelessWidget {
  const EnterCuponCodeTextField({
    super.key,
    required this.appTheme,
  });

  final AppTheme appTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(shape: BoxShape.rectangle),
      child: Row(
        children: [
          Expanded(
            flex: 256,
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: appTheme.neutralLight),
                  left: BorderSide(color: appTheme.neutralLight),
                  bottom: BorderSide(color: appTheme.neutralLight),
                ),
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 10),
                  hintText: "Enter Cupon Code",
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 87,
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 64, 191, 255),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: sizeCalculator(appTheme.screenHeight, 1.52)),
                child: Text(
                  "Apply",
                  style: appTheme.bodyNormalBold.copyWith(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}