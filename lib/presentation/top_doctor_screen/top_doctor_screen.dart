import '../top_doctor_screen/widgets/topdoctor_item_widget.dart';
import 'bloc/top_doctor_bloc.dart';
import 'models/top_doctor_model.dart';
import 'models/topdoctor_item_model.dart';
import 'package:flutter/material.dart';
import 'package:healthcareapp/core/app_export.dart';
import 'package:healthcareapp/widgets/app_bar/appbar_image.dart';
import 'package:healthcareapp/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:healthcareapp/widgets/app_bar/custom_app_bar.dart';

class TopDoctorScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<TopDoctorBloc>(
        create: (context) =>
            TopDoctorBloc(TopDoctorState(topDoctorModelObj: TopDoctorModel()))
              ..add(TopDoctorInitialEvent()),
        child: TopDoctorScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(40),
                leadingWidth: 64,
                leading: AppbarImage(
                    height: getSize(40),
                    width: getSize(40),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24),
                    onTap: () {
                      onTapArrowleft2(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle3(text: "lbl_top_doctor".tr),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(16),
                      width: getHorizontalSize(4),
                      svgPath: ImageConstant.imgComponent1,
                      margin:
                          getMargin(left: 24, top: 13, right: 24, bottom: 11))
                ]),
            body: Padding(
                padding: getPadding(left: 24, top: 24, right: 24),
                child: BlocSelector<TopDoctorBloc, TopDoctorState,
                        TopDoctorModel?>(
                    selector: (state) => state.topDoctorModelObj,
                    builder: (context, topDoctorModelObj) {
                      return ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: getVerticalSize(16));
                          },
                          itemCount:
                              topDoctorModelObj?.topdoctorItemList.length ?? 0,
                          itemBuilder: (context, index) {
                            TopdoctorItemModel model =
                                topDoctorModelObj?.topdoctorItemList[index] ??
                                    TopdoctorItemModel();
                            return TopdoctorItemWidget(model);
                          });
                    }))));
  }

  onTapArrowleft2(BuildContext context) {
    NavigatorService.goBack();
  }
}
