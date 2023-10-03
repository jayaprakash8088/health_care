import '../doctor_detail_screen/widgets/chipviewgroupthirtysix_item_widget.dart';
import 'bloc/doctor_detail_bloc.dart';
import 'models/chipviewgroupthirtysix_item_model.dart';
import 'models/doctor_detail_model.dart';
import 'package:flutter/material.dart';
import 'package:healthcareapp/core/app_export.dart';
import 'package:healthcareapp/widgets/app_bar/appbar_image.dart';
import 'package:healthcareapp/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:healthcareapp/widgets/app_bar/custom_app_bar.dart';
import 'package:healthcareapp/widgets/custom_button.dart';
import 'package:healthcareapp/widgets/custom_icon_button.dart';

class DoctorDetailScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<DoctorDetailBloc>(
        create: (context) => DoctorDetailBloc(
            DoctorDetailState(doctorDetailModelObj: DoctorDetailModel()))
          ..add(DoctorDetailInitialEvent()),
        child: DoctorDetailScreen());
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
                      onTapArrowleft4(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle3(text: "lbl_doctor_detail".tr),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(16),
                      width: getHorizontalSize(4),
                      svgPath: ImageConstant.imgComponent1,
                      margin:
                          getMargin(left: 24, top: 13, right: 24, bottom: 11))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 32, right: 24, bottom: 32),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(right: 38),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle959111x111,
                                height: getSize(115),
                                width: getSize(115),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(8))),
                            Padding(
                                padding:
                                    getPadding(left: 15, top: 8, bottom: 6),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("msg_dr_marcus_hori".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRalewayRomanSemiBold18Gray90001),
                                      Padding(
                                          padding: getPadding(top: 9),
                                          child: Text("lbl_chardiologist".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRalewayRomanMedium14Gray500)),
                                      Padding(
                                          padding: getPadding(top: 7),
                                          child: Row(children: [
                                            CustomImageView(
                                                svgPath: ImageConstant.imgStar,
                                                height: getSize(18),
                                                width: getSize(18),
                                                margin: getMargin(bottom: 1)),
                                            Padding(
                                                padding:
                                                    getPadding(left: 4, top: 3),
                                                child: Text("lbl_4_7".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRalewayRomanMedium135))
                                          ])),
                                      Padding(
                                          padding: getPadding(top: 7),
                                          child: Row(children: [
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgLocation,
                                                height: getSize(16),
                                                width: getSize(16),
                                                margin: getMargin(bottom: 1)),
                                            Padding(
                                                padding: getPadding(left: 4),
                                                child: Text("lbl_800m_away".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRalewayRomanMedium14Gray500))
                                          ]))
                                    ]))
                          ])),
                      Padding(
                          padding: getPadding(top: 17),
                          child: Text("lbl_about".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtRalewayRomanSemiBold16Gray90001)),
                      Container(
                          width: getHorizontalSize(305),
                          margin: getMargin(top: 12, right: 21),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_lorem_ipsum_dol2".tr,
                                    style: TextStyle(
                                        color: ColorConstant.gray60001,
                                        fontSize: getFontSize(12),
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: "lbl_read_more".tr,
                                    style: TextStyle(
                                        color: ColorConstant.blue600,
                                        fontSize: getFontSize(12),
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w500))
                              ]),
                              textAlign: TextAlign.left)),
                      Padding(
                          padding: getPadding(top: 32),
                          child: Row(children: [
                            Container(
                                padding: getPadding(
                                    left: 12, top: 13, right: 12, bottom: 13),
                                decoration: AppDecoration.outlineBluegray50
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder16),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: getPadding(top: 1),
                                          child: Text("lbl_mon".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRalewayRomanRegular10)),
                                      Padding(
                                          padding: getPadding(left: 1, top: 2),
                                          child: Text("lbl_21".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRalewayRomanSemiBold18Gray90001))
                                    ])),
                            Container(
                                margin: getMargin(left: 12),
                                padding: getPadding(
                                    left: 11, top: 13, right: 11, bottom: 13),
                                decoration: AppDecoration.outlineBluegray50
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder16),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: getPadding(left: 2, top: 1),
                                          child: Text("lbl_tue".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRalewayRomanRegular10)),
                                      Padding(
                                          padding: getPadding(top: 2),
                                          child: Text("lbl_22".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRalewayRomanSemiBold18Gray90001))
                                    ])),
                            Container(
                                margin: getMargin(left: 11),
                                padding: getPadding(all: 11),
                                decoration: AppDecoration.style.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder16),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: getPadding(top: 2),
                                          child: Text("lbl_wed".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRalewayRomanRegular10WhiteA700)),
                                      Padding(
                                          padding: getPadding(top: 3),
                                          child: Text("lbl_23".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRalewayRomanSemiBold18))
                                    ])),
                            Container(
                                margin: getMargin(left: 11),
                                padding: getPadding(
                                    left: 11, top: 12, right: 11, bottom: 12),
                                decoration: AppDecoration.outlineBluegray50
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder16),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: getPadding(left: 2, top: 2),
                                          child: Text("lbl_thu".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRalewayRomanRegular10)),
                                      Padding(
                                          padding: getPadding(top: 3),
                                          child: Text("lbl_24".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRalewayRomanSemiBold18Gray90001))
                                    ])),
                            Container(
                                margin: getMargin(left: 11),
                                padding: getPadding(all: 11),
                                decoration: AppDecoration.outlineBluegray50
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder16),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: getPadding(left: 5, top: 2),
                                          child: Text("lbl_fri".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRalewayRomanRegular10)),
                                      Padding(
                                          padding: getPadding(top: 3),
                                          child: Text("lbl_25".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRalewayRomanSemiBold18Gray90001))
                                    ])),
                            Container(
                                margin: getMargin(left: 6),
                                padding: getPadding(
                                    left: 11, top: 14, right: 11, bottom: 14),
                                decoration: AppDecoration.outlineBluegray50
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder16),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: getPadding(left: 3),
                                          child: Text("lbl_sat".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRalewayRomanRegular10)),
                                      Padding(
                                          padding: getPadding(top: 1),
                                          child: Text("lbl_26".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRalewayRomanSemiBold18Gray90001))
                                    ]))
                          ])),
                      Padding(
                          padding: getPadding(top: 32),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.blueGray50)),
                      Padding(
                          padding: getPadding(top: 32, bottom: 5),
                          child: BlocSelector<DoctorDetailBloc,
                                  DoctorDetailState, DoctorDetailModel?>(
                              selector: (state) => state.doctorDetailModelObj,
                              builder: (context, doctorDetailModelObj) {
                                return Wrap(
                                    runSpacing: getVerticalSize(5),
                                    spacing: getHorizontalSize(5),
                                    children: List<Widget>.generate(
                                        doctorDetailModelObj
                                                ?.chipviewgroupthirtysixItemList
                                                .length ??
                                            0, (index) {
                                      ChipviewgroupthirtysixItemModel model =
                                          doctorDetailModelObj
                                                      ?.chipviewgroupthirtysixItemList[
                                                  index] ??
                                              ChipviewgroupthirtysixItemModel();
                                      return ChipviewgroupthirtysixItemWidget(
                                          model, onSelectedChipView: (value) {
                                        context.read<DoctorDetailBloc>().add(
                                            UpdateChipViewEvent(
                                                index: index,
                                                isSelected: value));
                                      });
                                    }));
                              }))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 24, right: 24, bottom: 28),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomIconButton(
                      height: 50,
                      width: 50,
                      variant: IconButtonVariant.FillBlue5002,
                      shape: IconButtonShape.RoundedBorder8,
                      child: CustomImageView(
                          svgPath: ImageConstant.imgMusic50x50)),
                  Expanded(
                      child: CustomButton(
                          height: getVerticalSize(50),
                          text: "lbl_book_apointment".tr,
                          margin: getMargin(left: 11),
                          fontStyle:
                              ButtonFontStyle.RalewayRomanSemiBold14WhiteA700,
                          onTap: () {
                            onTapBookapointmentOne(context);
                          }))
                ]))));
  }

  onTapBookapointmentOne(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.bookingDoctorScreen,
    );
  }

  onTapArrowleft4(BuildContext context) {
    NavigatorService.goBack();
  }
}
