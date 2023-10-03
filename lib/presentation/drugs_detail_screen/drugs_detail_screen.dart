import 'bloc/drugs_detail_bloc.dart';
import 'models/drugs_detail_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:healthcareapp/core/app_export.dart';
import 'package:healthcareapp/widgets/app_bar/appbar_image.dart';
import 'package:healthcareapp/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:healthcareapp/widgets/app_bar/custom_app_bar.dart';
import 'package:healthcareapp/widgets/custom_button.dart';
import 'package:healthcareapp/widgets/custom_icon_button.dart';

class DrugsDetailScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<DrugsDetailBloc>(
        create: (context) => DrugsDetailBloc(
            DrugsDetailState(drugsDetailModelObj: DrugsDetailModel()))
          ..add(DrugsDetailInitialEvent()),
        child: DrugsDetailScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DrugsDetailBloc, DrugsDetailState>(
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
                        onTapArrowleft9(context);
                      }),
                  centerTitle: true,
                  title: AppbarSubtitle3(text: "lbl_details".tr),
                  actions: [
                    AppbarImage(
                        height: getSize(24),
                        width: getSize(24),
                        svgPath: ImageConstant.imgCart,
                        margin:
                            getMargin(left: 24, top: 9, right: 24, bottom: 7))
                  ]),
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 20, right: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgHealthvitllys163x1631,
                            height: getSize(163),
                            width: getSize(163),
                            radius:
                                BorderRadius.circular(getHorizontalSize(81)),
                            alignment: Alignment.center),
                        Padding(
                            padding: getPadding(top: 59),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("lbl_obh_combi".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRalewayRomanSemiBold20),
                                        Padding(
                                            padding: getPadding(top: 9),
                                            child: Text("lbl_75ml".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRalewayRomanSemiBold16Gray500))
                                      ]),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgFavorite,
                                      height: getSize(24),
                                      width: getSize(24),
                                      margin: getMargin(top: 27))
                                ])),
                        Padding(
                            padding: getPadding(top: 10),
                            child: Row(children: [
                              Padding(
                                  padding: getPadding(bottom: 2),
                                  child: RatingBar.builder(
                                      initialRating: 0,
                                      minRating: 0,
                                      direction: Axis.horizontal,
                                      allowHalfRating: false,
                                      itemSize: getVerticalSize(14),
                                      itemCount: 4,
                                      updateOnDrag: true,
                                      onRatingUpdate: (rating) {},
                                      itemBuilder: (context, _) {
                                        return Icon(Icons.star);
                                      })),
                              Padding(
                                  padding: getPadding(left: 5),
                                  child: Text("lbl_4_0".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtRalewayRomanSemiBold14Amber500))
                            ])),
                        Padding(
                            padding: getPadding(top: 28, right: 6),
                            child: Row(children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgCar32x32,
                                  height: getSize(32),
                                  width: getSize(32)),
                              Padding(
                                  padding:
                                      getPadding(left: 23, top: 2, bottom: 1),
                                  child: Text("lbl_1".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtRalewayRomanSemiBold24)),
                              CustomImageView(
                                  svgPath: ImageConstant.imgPlus,
                                  height: getSize(32),
                                  width: getSize(32),
                                  margin: getMargin(left: 28)),
                              Spacer(),
                              Padding(
                                  padding: getPadding(top: 1),
                                  child: Text("lbl_9_99".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtRalewayRomanSemiBold26))
                            ])),
                        Padding(
                            padding: getPadding(left: 1, top: 40),
                            child: Text("lbl_description".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle
                                    .txtRalewayRomanSemiBold16Gray90001)),
                        Container(
                            width: getHorizontalSize(328),
                            margin: getMargin(
                                left: 1, top: 10, right: 5, bottom: 5),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "msg_obh_combi_is_a2".tr,
                                      style: TextStyle(
                                          color: ColorConstant.blueGray40001,
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
                                textAlign: TextAlign.left))
                      ])),
              bottomNavigationBar: Padding(
                  padding: getPadding(left: 20, right: 20, bottom: 28),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomIconButton(
                            height: 50,
                            width: 50,
                            shape: IconButtonShape.RoundedBorder8,
                            onTap: () {
                              onTapBtnCartOne(context);
                            },
                            child: CustomImageView(
                                svgPath: ImageConstant.imgCart50x50)),
                        Expanded(
                            child: CustomButton(
                                height: getVerticalSize(50),
                                text: "lbl_buy_now".tr,
                                margin: getMargin(left: 19),
                                fontStyle: ButtonFontStyle
                                    .RalewayRomanSemiBold14WhiteA700,
                                onTap: () {
                                  onTapBuynow(context);
                                }))
                      ]))));
    });
  }

  onTapBtnCartOne(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.myCartScreen,
    );
  }

  onTapBuynow(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.myCartScreen,
    );
  }

  onTapArrowleft9(BuildContext context) {
    NavigatorService.goBack();
  }
}
