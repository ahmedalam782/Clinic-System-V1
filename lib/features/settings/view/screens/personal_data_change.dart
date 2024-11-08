import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/assets_manager.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/values_manager.dart';

class PersonalDataChange extends StatelessWidget {
  const PersonalDataChange({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const ImageIcon(
            size: 24,
            AssetImage(ImageAssets.arrowBack),
          ),
        ),
        title: const Text(
          "تعديل الملف الشخصى",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Insets.s24),
        child: Column(
          children: [
            SizedBox(
              height: Sizes.s20.h,
            ),
            Center(
              child: Stack(
                alignment: Alignment.bottomLeft,
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                    radius: 140.r,
                    backgroundColor: ColorManager.white,
                    backgroundImage: const AssetImage(
                      ImageAssets.avatarImg,
                    ),
                  ),
                  Positioned(
                    left: 20,
                    bottom: 5,
                    child: InkWell(
                      onTap: () {},
                      child: CircleAvatar(
                        radius: 30.r,
                        backgroundColor: ColorManager.black,
                        child: ImageIcon(
                          color: ColorManager.white,
                          size: 30,
                          const AssetImage(
                            ImageAssets.iconImageEdit,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
