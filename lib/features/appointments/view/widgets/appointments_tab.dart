import 'package:clinic_system_patient/features/appointments/data/models/tabs_model.dart';
import 'package:clinic_system_patient/features/appointments/view/widgets/tab_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/assets_manager.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/font_manager.dart';
import '../../../../core/resources/styles_manager.dart';
import '../../../../core/resources/values_manager.dart';

class AppointmentsTab extends StatefulWidget {
  const AppointmentsTab({super.key});

  @override
  State<AppointmentsTab> createState() => _AppointmentsTabState();
}

class _AppointmentsTabState extends State<AppointmentsTab> {
  List<TabsModel> tabs = [
    TabsModel(id: '1', name: "القادمة"),
    TabsModel(id: '2', name: "المكتملة"),
    TabsModel(id: '3', name: "الملغية"),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Insets.s24),
        child: Column(
          children: [
            SizedBox(
              height: Sizes.s30.h,
            ),
            Center(
              child: Text(
                "جدول المواعيد",
                style: getBoldStyle(
                  color: ColorManager.black,
                  fontSize: FontSize.s24,
                ),
              ),
            ),
            SizedBox(
              height: Sizes.s30.h,
            ),
            DefaultTabController(
              length: tabs.length,
              child: TabBar(
                isScrollable: true,
                padding: EdgeInsets.zero,
                dividerColor: Colors.transparent,
                indicatorColor: Colors.transparent,
                tabAlignment: TabAlignment.center,
                onTap: (index) => setState(() {
                  selectedIndex = index;
                }),
                tabs: tabs
                    .map(
                      (tab) => TabItems(
                        title: tab.name,
                        isSelected: tabs.indexOf(tab) == selectedIndex,
                      ),
                    )
                    .toList(),
              ),
            ),
            SizedBox(
              height: Sizes.s20.h,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (_,index)=>Container(
                padding: const EdgeInsets.symmetric(vertical: Insets.s24),
                decoration: BoxDecoration(
                  color: ColorManager.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(25.r),
                  ),
                  border: Border.all(
                    width: 1,
                    color: selectedIndex==0? ColorManager.primary:selectedIndex==1?ColorManager.green:ColorManager.error,
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                      spreadRadius: 1,
                      color:selectedIndex==0? ColorManager.primary.withOpacity(.25):selectedIndex==1?ColorManager.green.withOpacity(.25):ColorManager.error.withOpacity(.25),
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: Insets.s15, vertical: Insets.s16),
                      decoration: BoxDecoration(
                        color: ColorManager.primary,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.r),
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "دورك",
                            style: getBoldStyle(
                              color: ColorManager.white,
                              fontSize: FontSize.s18,
                            ),
                          ),
                          Text(
                            "5",
                            style: getBoldStyle(
                              color: ColorManager.white,
                              fontSize: FontSize.s24,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: Sizes.s10.h,
                    ),
                    Column(
                      children: [
                        Text(
                          "كشف باطنه",
                          style: getBoldStyle(
                            color: ColorManager.black,
                            fontSize: FontSize.s20,
                          ),
                        ),
                        SizedBox(
                          height: Sizes.s5.h,
                        ),
                        Text(
                          "د / محمد خالد",
                          style: getMediumStyle(
                            color: ColorManager.black,
                            fontSize: FontSize.s18,
                          ),
                        ),
                        SizedBox(
                          height: Sizes.s5.h,
                        ),
                        Text(
                          "يوم الخميس 24/10/2024",
                          style: getMediumStyle(
                            color: ColorManager.black,
                            fontSize: FontSize.s14,
                          ),
                        ),
                        SizedBox(
                          height: Sizes.s5.h,
                        ),
                        Text(
                          "من 10:00 ص الى 10:30 ص",
                          style: getMediumStyle(
                            color: ColorManager.black,
                            fontSize: FontSize.s14,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: Sizes.s20.h,
                    ),
                    const Image(
                      image: AssetImage(ImageAssets.famousDoctor),
                      height: 130,
                      width: 100,
                      fit: BoxFit.fill,
                    )
                  ],
                ),
              ),
                  separatorBuilder:  (_,index)=>SizedBox(height: Sizes.s20.h,),
                  itemCount: 3),
            ),


          ],
        ),
      ),
    );
  }
}
