import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/resources/assets_manager.dart';
import '../../../../../../core/resources/color_manager.dart';
import '../../../../../../core/resources/font_manager.dart';
import '../../../../../../core/resources/styles_manager.dart';
import '../../../../../../core/resources/values_manager.dart';

class NextAppointment extends StatelessWidget {
  const NextAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "الموعد القادم",
          style: getMediumStyle(
            color: ColorManager.black,
            fontSize: FontSize.s18,
          ),
        ),
        SizedBox(
          height: Sizes.s10.h,
        ),
        Container(
          padding: const EdgeInsets.symmetric(
              vertical: Insets.s24, horizontal: Insets.s8),
          decoration: BoxDecoration(
            color: ColorManager.primary,
            borderRadius: BorderRadius.all(
              Radius.circular(25.r),
            ),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: Insets.s16, vertical: Insets.s16),
                decoration: BoxDecoration(
                  color: ColorManager.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.r),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      "دورك",
                      style: getBoldStyle(
                        color: ColorManager.black,
                        fontSize: FontSize.s18,
                      ),
                    ),
                    Text(
                      "5",
                      style: getBoldStyle(
                        color: ColorManager.black,
                        fontSize: FontSize.s24,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: Sizes.s30.h,
              ),
              Column(
                children: [
                  Text(
                    "كشف باطنه",
                    style: getBoldStyle(
                      color: ColorManager.white,
                      fontSize: FontSize.s16,
                    ),
                  ),
                  SizedBox(
                    height: Sizes.s5.h,
                  ),
                  Text(
                    "د / محمد خالد",
                    style: getMediumStyle(
                      color: ColorManager.white,
                      fontSize: FontSize.s16,
                    ),
                  ),
                  SizedBox(
                    height: Sizes.s5.h,
                  ),
                  Text(
                    "يوم الخميس 24/10/2024",
                    style: getMediumStyle(
                      color: ColorManager.white,
                      fontSize: FontSize.s11,
                    ),
                  ),
                  SizedBox(
                    height: Sizes.s5.h,
                  ),
                  Text(
                    "من 10:00 ص الى 10:30 ص",
                    style: getBoldStyle(
                      color: ColorManager.white,
                      fontSize: FontSize.s11,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: Sizes.s30.h,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(25.r),
                child: Image(
                  image: const AssetImage(ImageAssets.docImg),
                  height: Sizes.s100.h,
                  width: Sizes.s80.w,
                  fit: BoxFit.fill,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
