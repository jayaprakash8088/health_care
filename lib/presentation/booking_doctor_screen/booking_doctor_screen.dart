import 'bloc/booking_doctor_bloc.dart';
import 'models/booking_doctor_model.dart';
import 'package:flutter/material.dart';
import 'package:healthcareapp/core/app_export.dart';
import 'package:healthcareapp/widgets/app_bar/appbar_image.dart';
import 'package:healthcareapp/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:healthcareapp/widgets/app_bar/custom_app_bar.dart';
import 'package:healthcareapp/widgets/custom_button.dart';
import 'package:healthcareapp/widgets/custom_icon_button.dart';
import 'package:healthcareapp/presentation/booking_doctor_success_dialog/booking_doctor_success_dialog.dart';

class BookingDoctorScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<BookingDoctorBloc>(
        create: (context) => BookingDoctorBloc(
            BookingDoctorState(bookingDoctorModelObj: BookingDoctorModel()))
          ..add(BookingDoctorInitialEvent()),
        child: BookingDoctorScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingDoctorBloc, BookingDoctorState>(
        builder: (context, state) {
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
                        onTapArrowleft5(context);
                      }),
                  centerTitle: true,
                  title: AppbarSubtitle3(text: "lbl_appointment".tr)),
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 24, top: 28, right: 24, bottom: 28),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: getPadding(left: 8, top: 4, right: 30),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgRectangle959111x111,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                                  svgPath:
                                                      ImageConstant.imgStar,
                                                  height: getSize(18),
                                                  width: getSize(18),
                                                  margin: getMargin(bottom: 1)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 4, top: 3),
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
                                                  child: Text(
                                                      "lbl_800m_away".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRalewayRomanMedium14Gray500))
                                            ]))
                                      ]))
                            ])),
                        Padding(
                            padding: getPadding(left: 1, top: 31),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(bottom: 1),
                                      child: Text("lbl_date".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRalewayRomanSemiBold16Gray90001)),
                                  Padding(
                                      padding: getPadding(top: 3),
                                      child: Text("lbl_change".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRalewayRomanRegular14Blue600))
                                ])),
                        Padding(
                            padding: getPadding(top: 9, right: 42),
                            child: Row(children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgCalendar,
                                  height: getSize(36),
                                  width: getSize(36)),
                              Padding(
                                  padding:
                                      getPadding(left: 15, top: 10, bottom: 8),
                                  child: Text("msg_wednesday_jun".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtRalewayRomanSemiBold14Gray700))
                            ])),
                        Padding(
                            padding: getPadding(top: 15),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.gray10001)),
                        Padding(
                            padding: getPadding(top: 14),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(bottom: 1),
                                      child: Text("lbl_reason".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRalewayRomanSemiBold16Gray90001)),
                                  Padding(
                                      padding: getPadding(top: 3),
                                      child: Text("lbl_change".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRalewayRomanRegular14Blue600))
                                ])),
                        Padding(
                            padding: getPadding(top: 9),
                            child: Row(children: [
                              CustomIconButton(
                                  height: 36,
                                  width: 36,
                                  shape: IconButtonShape.CircleBorder18,
                                  padding: IconButtonPadding.PaddingAll9,
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgShare)),
                              Padding(
                                  padding:
                                      getPadding(left: 15, top: 10, bottom: 8),
                                  child: Text("lbl_chest_pain".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtRalewayRomanSemiBold14Gray90001))
                            ])),
                        Padding(
                            padding: getPadding(top: 15),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.gray10001)),
                        Padding(
                            padding: getPadding(top: 16),
                            child: Text("lbl_payment_detail".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle
                                    .txtRalewayRomanSemiBold16Gray90001)),
                        Padding(
                            padding: getPadding(top: 12, right: 2),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("lbl_consultation".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtRalewayRomanRegular14Bluegray300),
                                  Text("lbl_60_00".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtRalewayRomanRegular14Gray90001)
                                ])),
                        Padding(
                            padding: getPadding(top: 11, right: 1),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("lbl_admin_fee".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtRalewayRomanRegular14Bluegray300),
                                  Text("lbl_01_00".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtRalewayRomanRegular14Gray90001)
                                ])),
                        Padding(
                            padding: getPadding(top: 11, right: 1),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(bottom: 1),
                                      child: Text("msg_aditional_disco".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRalewayRomanRegular14Bluegray300)),
                                  Padding(
                                      padding: getPadding(top: 1),
                                      child: Text("lbl".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRalewayRomanRegular14Gray700))
                                ])),
                        Padding(
                            padding: getPadding(top: 10, right: 2),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("lbl_total".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtRalewayRomanSemiBold14Gray90001),
                                  Text("lbl_61_00".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRalewayRomanSemiBold14)
                                ])),
                        Padding(
                            padding: getPadding(top: 15),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.gray10001,
                                endIndent: getHorizontalSize(8))),
                        Padding(
                            padding: getPadding(left: 2, top: 17),
                            child: Text("lbl_payment_method".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle
                                    .txtRalewayRomanSemiBold16Gray90001)),
                        Container(
                            margin: getMargin(top: 13),
                            padding: getPadding(all: 14),
                            decoration: AppDecoration.outlineBluegray50
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder11),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: getPadding(left: 8),
                                      child: Text("lbl_visa".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtInterBlackItalic16)),
                                  Padding(
                                      padding: getPadding(top: 3, bottom: 2),
                                      child: Text("lbl_change".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRalewayRomanRegular12))
                                ]))
                      ])),
              bottomNavigationBar: Padding(
                  padding: getPadding(left: 20, right: 20, bottom: 26),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: getPadding(top: 3, bottom: 5),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("lbl_total".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtRalewayRomanMedium14Bluegray300),
                                  Padding(
                                      padding: getPadding(top: 2),
                                      child: Text("lbl_61_002".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRalewayRomanSemiBold18Gray90001))
                                ])),
                        CustomButton(
                            height: getVerticalSize(50),
                            width: getHorizontalSize(192),
                            text: "lbl_book_now".tr,
                            fontStyle:
                                ButtonFontStyle.RalewayRomanSemiBold14WhiteA700,
                            onTap: () {
                              onTapBooknow(context);
                            })
                      ]))));
    });
  }

  onTapBooknow(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: BookingDoctorSuccessDialog.builder(context),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.only(left: 0),
            ));
  }

  onTapArrowleft5(BuildContext context) {
    NavigatorService.goBack();
  }
}
