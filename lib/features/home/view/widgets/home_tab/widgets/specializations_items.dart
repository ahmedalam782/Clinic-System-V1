import 'package:clinic_system_patient/features/home/data/models/specializations_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/resources/color_manager.dart';
import '../../../../../../core/resources/font_manager.dart';
import '../../../../../../core/resources/styles_manager.dart';
import '../../../../../../core/resources/values_manager.dart';
import '../../../../../../core/routes/routes.dart';

class SpecializationsItems extends StatelessWidget {
  const SpecializationsItems({super.key, required this.specializationsModel});

  final SpecializationsModel specializationsModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(
          Routes.specializationsDetails,
          arguments: specializationsModel),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: Insets.s34,
        ),
        decoration: BoxDecoration(
          color: ColorManager.softPeach,
          borderRadius: BorderRadius.all(
            Radius.circular(35.r),
          ),
        ),
        child: Row(
          children: [
            Image.asset(specializationsModel.imageName),
            SizedBox(
              width: Sizes.s28.h,
            ),
            Text(
              specializationsModel.title,
              style: getBoldStyle(
                color: ColorManager.black,
                fontSize: FontSize.s24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
