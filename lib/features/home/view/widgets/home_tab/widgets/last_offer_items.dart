import 'package:clinic_system_patient/features/home/data/models/offer_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/resources/color_manager.dart';
import '../../../../../../core/resources/font_manager.dart';
import '../../../../../../core/resources/styles_manager.dart';
import '../../../../../../core/resources/values_manager.dart';
import '../../../../../../core/routes/routes.dart';

class LastOfferItems extends StatelessWidget {
  const LastOfferItems({super.key, required this.offerModel});

  final OfferModel offerModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context)
          .pushNamed(Routes.specializationsDetails, arguments: offerModel),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(25.r),
          ),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              ColorManager.babyBlue,
              ColorManager.cornflowerBlue,
              ColorManager.primary,
            ],
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: Insets.s12, horizontal: Insets.s12),
              child: SizedBox(
                width: 145,
                child: Text(
                  offerModel.offerText,
                  style: getBoldStyle(
                    color: ColorManager.white,
                    fontSize: FontSize.s14,
                  ),
                ),
              ),
            ),
            offerModel.offerImage == null
                ? const SizedBox()
                : Image.asset(
                    offerModel.offerImage!,
                    fit: BoxFit.cover,
                    width: 200,
                    height: 120,
                  )
          ],
        ),
      ),
    );
  }
}
