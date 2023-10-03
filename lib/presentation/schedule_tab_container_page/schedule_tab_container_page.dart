import 'bloc/schedule_tab_container_bloc.dart';
import 'models/schedule_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:healthcareapp/core/app_export.dart';
import 'package:healthcareapp/presentation/schedule_page/schedule_page.dart';
import 'package:healthcareapp/widgets/app_bar/appbar_image.dart';
import 'package:healthcareapp/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class ScheduleTabContainerPage extends StatefulWidget {
  @override
  _ScheduleTabContainerPageState createState() =>
      _ScheduleTabContainerPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ScheduleTabContainerBloc>(
      create: (context) => ScheduleTabContainerBloc(ScheduleTabContainerState(
        scheduleTabContainerModelObj: ScheduleTabContainerModel(),
      ))
        ..add(ScheduleTabContainerInitialEvent()),
      child: ScheduleTabContainerPage(),
    );
  }
}

class _ScheduleTabContainerPageState extends State<ScheduleTabContainerPage>
    with TickerProviderStateMixin {
  late TabController group125Controller;

  @override
  void initState() {
    super.initState();
    group125Controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleTabContainerBloc, ScheduleTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
              height: getVerticalSize(
                45,
              ),
              title: Padding(
                padding: getPadding(
                  left: 21,
                ),
                child: Text(
                  "lbl_schedule".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRalewayRomanSemiBold24,
                ),
              ),
              actions: [
                Container(
                  height: getVerticalSize(
                    33,
                  ),
                  width: getHorizontalSize(
                    24,
                  ),
                  margin: getMargin(
                    left: 20,
                    top: 8,
                    right: 20,
                    bottom: 4,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      AppbarImage(
                        height: getVerticalSize(
                          16,
                        ),
                        width: getHorizontalSize(
                          4,
                        ),
                        svgPath: ImageConstant.imgComponent1WhiteA700,
                        margin: getMargin(
                          left: 20,
                          top: 17,
                        ),
                      ),
                      AppbarImage(
                        height: getSize(
                          24,
                        ),
                        width: getSize(
                          24,
                        ),
                        svgPath: ImageConstant.imgVolume,
                        margin: getMargin(
                          bottom: 9,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            body: Container(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: getVerticalSize(
                      46,
                    ),
                    width: getHorizontalSize(
                      335,
                    ),
                    margin: getMargin(
                      top: 18,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.gray10002,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          8,
                        ),
                      ),
                    ),
                    child: TabBar(
                      controller: group125Controller,
                      labelColor: ColorConstant.whiteA700,
                      labelStyle: TextStyle(
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w600,
                      ),
                      unselectedLabelColor: ColorConstant.gray90001,
                      unselectedLabelStyle: TextStyle(
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w400,
                      ),
                      indicator: BoxDecoration(
                        color: ColorConstant.blue600,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            8,
                          ),
                        ),
                      ),
                      tabs: [
                        Tab(
                          child: Text(
                            "lbl_upcoming".tr,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Tab(
                          child: Text(
                            "lbl_completed".tr,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Tab(
                          child: Text(
                            "lbl_canceled".tr,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      578,
                    ),
                    child: TabBarView(
                      controller: group125Controller,
                      children: [
                        SchedulePage.builder(context),
                        SchedulePage.builder(context),
                        SchedulePage.builder(context),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
