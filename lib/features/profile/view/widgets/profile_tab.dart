import 'package:clinic_system_patient/features/profile/view/widgets/profile_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/assets_manager.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/font_manager.dart';
import '../../../../core/resources/styles_manager.dart';
import '../../../../core/resources/values_manager.dart';
import '../../../../core/routes/routes.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Insets.s24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: Sizes.s30.h,
              ),
              Center(
                child: Text(
                  "الملف الشخصى",
                  style: getBoldStyle(
                    color: ColorManager.black,
                    fontSize: FontSize.s24,
                  ),
                ),
              ),
              SizedBox(
                height: Sizes.s30.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 120.r,
                    backgroundColor: ColorManager.white,
                    backgroundImage: const AssetImage(
                      ImageAssets.avatarImg,
                    ),
                  ),
                  SizedBox(
                    width: Sizes.s60.w,
                  ),
                  InkWell(
                    onTap: () =>
                        Navigator.of(context).pushNamed(Routes.settings),
                    child: const ImageIcon(
                      size: 40,
                      AssetImage(
                        ImageAssets.settingsIcon,
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                "M7md Henedy",
                style: getBoldStyle(
                  color: ColorManager.black,
                  fontSize: FontSize.s24,
                ),
              ),
              SizedBox(
                height: Sizes.s30.h,
              ),
              ProfileItems(
                title: 'الايميل    : ',
                data: 'mohamedkhhenedy@gmail.com',
              ),
              SizedBox(
                height: Sizes.s10.h,
              ),
              ProfileItems(
                title: 'الموبايل  : ',
                data: '01009404933',
              ),
              SizedBox(
                height: Sizes.s10.h,
              ),
              ProfileItems(
                title: 'السن        :   ',
                data: ' 24 سنه',
              ),
              SizedBox(
                height: Sizes.s10.h,
              ),
              ProfileItems(
                title: 'الجنس     :   ',
                data: ' ذكر',
              ),
              SizedBox(
                height: Sizes.s10.h,
              ),
              ProfileItems(
                title: 'الطول      :   ',
                data: ' 180سم',
              ),
              SizedBox(
                height: Sizes.s10.h,
              ),
              ProfileItems(
                title: 'الوزن        :   ',
                data: ' 78 كجم',
              ),
              Image.asset(ImageAssets.creativeWritingProfile)
            ],
          ),
        ),
      ),
    );
  }
}