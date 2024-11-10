import 'package:clinic_system_patient/core/resources/color_manager.dart';
import 'package:clinic_system_patient/core/resources/font_manager.dart';
import 'package:clinic_system_patient/core/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefaultDropBtn extends StatelessWidget {
  const DefaultDropBtn({
    super.key,
    required this.currentValue,
    required this.firstValue,
    required this.secondValue,
    required this.firstTitle,
    required this.secondTitle,
    this.onChanged,
    this.labelTextStyle,
    this.label,
  });

  final String currentValue;
  final String firstValue;
  final String secondValue;
  final String firstTitle;
  final String secondTitle;
  final void Function(String?)? onChanged;
  final TextStyle? labelTextStyle;
  final String? label;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        label != null
            ? Text(
                label!,
                style: labelTextStyle ??
                    getBoldStyle(
                      color: ColorManager.black,
                      fontSize: FontSize.s18,
                    ),
              )
            : const SizedBox(),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.r),
            color: ColorManager.white,
            border: Border.all(
              width: .2,
              color: ColorManager.black.withOpacity(.5),
            ),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              padding: EdgeInsets.symmetric(
                vertical: screenHeight * .012,
                horizontal: screenWidth * .04,
              ),
              dropdownColor: ColorManager.white,
              isDense: true,
              iconSize: 30,
              isExpanded: true,
              icon: Icon(
                Icons.arrow_drop_down,
                color: ColorManager.primary, // Add this
              ),
              value: currentValue,
              items: [
                DropdownMenuItem(
                  value: firstValue,
                  child: Text(firstTitle,
                      style: getRegularStyle(
                          color: ColorManager.black, fontSize: FontSize.s20)),
                ),
                DropdownMenuItem(
                  value: secondValue,
                  child: Text(secondTitle,
                      style: getRegularStyle(
                          color: ColorManager.black, fontSize: FontSize.s20)),
                )
              ],
              onChanged: onChanged,
            ),
          ),
        ),
      ],
    );
  }
}
