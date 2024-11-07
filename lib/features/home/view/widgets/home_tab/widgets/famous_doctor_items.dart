import 'package:clinic_system_patient/features/home/data/models/famous_doc_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/resources/color_manager.dart';
import '../../../../../../core/resources/font_manager.dart';
import '../../../../../../core/resources/styles_manager.dart';
import '../../../../../../core/resources/values_manager.dart';

class FamousDoctorItems extends StatelessWidget {
  const FamousDoctorItems({super.key, required this.famousDocModel});

  final FamousDocModel famousDocModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: Insets.s12,
        horizontal: Insets.s12,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(25.r),
        ),
        border: Border.all(width: .2, color: ColorManager.springWood),
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          colors: [
            ColorManager.white,
            ColorManager.springWood,
            ColorManager.platinum,
            ColorManager.lightGrey
          ],
        ),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                famousDocModel.name,
                style: getBoldStyle(
                  color: ColorManager.black,
                  fontSize: FontSize.s18,
                ),
              ),
              Text(
                famousDocModel.experience,
                style: getRegularStyle(
                  color: ColorManager.black,
                  fontSize: FontSize.s15,
                ),
              ),
              SizedBox(
                height: Sizes.s5.h,
              ),
              RatingBar.builder(
                initialRating: famousDocModel.rating,
                minRating: 0,
                maxRating: 5,
                textDirection: TextDirection.ltr,
                unratedColor: ColorManager.black.withOpacity(.06),
                direction: Axis.horizontal,
                allowHalfRating: true,
                ignoreGestures: true,
                itemCount: 5,
                itemSize: 20,
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  size: 20,
                  color: ColorManager.yellow,
                ),
                onRatingUpdate: (rating) {
                  if (kDebugMode) {
                    print(rating);
                  }
                },
              ),
              SizedBox(
                height: Sizes.s10.h,
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: Insets.s8, vertical: Insets.s4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25.r),
                      ),
                      color: ColorManager.black.withOpacity(.1),
                    ),
                    child: Row(
                      children: [
                        Text(
                          famousDocModel.specialtyTitle,
                          style: getRegularStyle(
                            color: ColorManager.black,
                            fontSize: FontSize.s15,
                          ),
                        ),
                        SizedBox(
                          width: Sizes.s10.h,
                        ),
                        famousDocModel.specialtyImage == null
                            ? const SizedBox()
                            : CircleAvatar(
                                radius: 20.r,
                                backgroundColor: ColorManager.white,
                                child: Image.asset(
                                  famousDocModel.specialtyImage!,
                                  height: 15,
                                  width: 18,
                                ),
                              )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: Sizes.s10.h,
                  ),
                  CircleAvatar(
                      radius: 20.r,
                      backgroundColor: ColorManager.white,
                      child: Icon(
                        Icons.phone_in_talk,
                        color: ColorManager.primary,
                      ))
                ],
              ),
            ],
          ),
          famousDocModel.imageDoctor == null
              ? const SizedBox()
              : Image.asset(
                  famousDocModel.imageDoctor!,
                  height: 140,
                )
        ],
      ),
    );
  }
}
