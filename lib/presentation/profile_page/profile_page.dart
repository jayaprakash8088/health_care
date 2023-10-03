import '../profile_page/widgets/profile_item_widget.dart';
import 'bloc/profile_bloc.dart';
import 'models/profile_item_model.dart';
import 'models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:healthcareapp/core/app_export.dart';
import 'package:healthcareapp/widgets/custom_icon_button.dart';
import 'package:healthcareapp/presentation/log_out_pop_up_dialog/log_out_pop_up_dialog.dart';

class ProfilePage extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileBloc>(
        create: (context) =>
            ProfileBloc(ProfileState(profileModelObj: ProfileModel()))
              ..add(ProfileInitialEvent()),
        child: ProfilePage());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: Colors.transparent,
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0, 0),
                        end: Alignment(1, 0.43),
                        colors: [
                      ColorConstant.blue60001,
                      ColorConstant.blue700
                    ])),
                child: Container(
                    width: double.maxFinite,
                    decoration: AppDecoration.gradientBlue60001Blue700,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgComponent1WhiteA700,
                                    height: getVerticalSize(16),
                                    width: getHorizontalSize(4),
                                    alignment: Alignment.centerRight,
                                    margin: getMargin(top: 25, right: 20)),
                                Container(
                                    height: getVerticalSize(82),
                                    width: getHorizontalSize(81),
                                    margin: getMargin(top: 3),
                                    child: Stack(
                                        alignment: Alignment.bottomRight,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgEllipse2780x80,
                                              height: getSize(80),
                                              width: getSize(80),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(40)),
                                              alignment: Alignment.center),
                                          CustomIconButton(
                                              height: 24,
                                              width: 24,
                                              variant: IconButtonVariant
                                                  .FillWhiteA700,
                                              shape: IconButtonShape
                                                  .CircleBorder12,
                                              padding:
                                                  IconButtonPadding.PaddingAll4,
                                              alignment: Alignment.bottomRight,
                                              onTap: () {
                                                onTapBtnCamera(context);
                                              },
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgCamera15x15))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 16),
                                    child: Text("lbl_amelia_renata".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRalewayRomanSemiBold18)),
                                Container(
                                    height: getVerticalSize(102),
                                    child: BlocSelector<ProfileBloc,
                                            ProfileState, ProfileModel?>(
                                        selector: (state) =>
                                            state.profileModelObj,
                                        builder: (context, profileModelObj) {
                                          return ListView.separated(
                                              padding: getPadding(
                                                  left: 44, top: 30, right: 44),
                                              scrollDirection: Axis.horizontal,
                                              separatorBuilder:
                                                  (context, index) {
                                                return Padding(
                                                    padding: getPadding(
                                                        left: 31.5,
                                                        right: 31.5),
                                                    child: SizedBox(
                                                        height:
                                                            getVerticalSize(44),
                                                        child: VerticalDivider(
                                                            width:
                                                                getHorizontalSize(
                                                                    1),
                                                            thickness:
                                                                getVerticalSize(
                                                                    1),
                                                            color: ColorConstant
                                                                .cyan100)));
                                              },
                                              itemCount: profileModelObj
                                                      ?.profileItemList
                                                      .length ??
                                                  0,
                                              itemBuilder: (context, index) {
                                                ProfileItemModel model =
                                                    profileModelObj
                                                                ?.profileItemList[
                                                            index] ??
                                                        ProfileItemModel();
                                                return ProfileItemWidget(model);
                                              });
                                        })),
                                Container(
                                    width: double.maxFinite,
                                    child: Container(
                                        margin: getMargin(top: 41),
                                        padding: getPadding(
                                            left: 20,
                                            top: 31,
                                            right: 20,
                                            bottom: 31),
                                        decoration: AppDecoration.white
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderTL30),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    CustomIconButton(
                                                        height: 43,
                                                        width: 43,
                                                        shape: IconButtonShape
                                                            .RoundedBorder21,
                                                        padding:
                                                            IconButtonPadding
                                                                .PaddingAll9,
                                                        child: CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgLocation43x43)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 18,
                                                            top: 13,
                                                            bottom: 10),
                                                        child: Text(
                                                            "lbl_my_saved".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRalewayRomanSemiBold16Gray90001)),
                                                    Spacer(),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgArrowright,
                                                        height: getSize(24),
                                                        width: getSize(24),
                                                        margin: getMargin(
                                                            top: 10, bottom: 9))
                                                  ]),
                                              Padding(
                                                  padding: getPadding(top: 13),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray50)),
                                              Padding(
                                                  padding: getPadding(top: 13),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomIconButton(
                                                            height: 43,
                                                            width: 43,
                                                            shape: IconButtonShape
                                                                .RoundedBorder21,
                                                            padding:
                                                                IconButtonPadding
                                                                    .PaddingAll9,
                                                            child: CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgMenu)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 18,
                                                                top: 13,
                                                                bottom: 10),
                                                            child: Text(
                                                                "lbl_appointmnet"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRalewayRomanSemiBold16Gray90001)),
                                                        Spacer(),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowright,
                                                            height: getSize(24),
                                                            width: getSize(24),
                                                            margin: getMargin(
                                                                top: 10,
                                                                bottom: 9))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 13),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray50)),
                                              Padding(
                                                  padding: getPadding(top: 13),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomIconButton(
                                                            height: 43,
                                                            width: 43,
                                                            shape: IconButtonShape
                                                                .RoundedBorder21,
                                                            padding:
                                                                IconButtonPadding
                                                                    .PaddingAll9,
                                                            child: CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgClock43x43)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 18,
                                                                top: 13,
                                                                bottom: 10),
                                                            child: Text(
                                                                "lbl_payment_method"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRalewayRomanSemiBold16Gray90001)),
                                                        Spacer(),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowright,
                                                            height: getSize(24),
                                                            width: getSize(24),
                                                            margin: getMargin(
                                                                top: 9,
                                                                bottom: 10))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 13),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray50)),
                                              Padding(
                                                  padding: getPadding(top: 13),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomIconButton(
                                                            height: 43,
                                                            width: 43,
                                                            shape: IconButtonShape
                                                                .RoundedBorder21,
                                                            padding:
                                                                IconButtonPadding
                                                                    .PaddingAll9,
                                                            child: CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgClock1)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 18,
                                                                top: 11,
                                                                bottom: 12),
                                                            child: Text(
                                                                "lbl_faqs".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRalewayRomanSemiBold16Gray90001)),
                                                        Spacer(),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowright,
                                                            height: getSize(24),
                                                            width: getSize(24),
                                                            margin: getMargin(
                                                                top: 10,
                                                                bottom: 9))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 13),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray50)),
                                              GestureDetector(
                                                  onTap: () {
                                                    onTapLogout(context);
                                                  },
                                                  child: Padding(
                                                      padding: getPadding(
                                                          top: 13, bottom: 74),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            CustomIconButton(
                                                                height: 43,
                                                                width: 43,
                                                                variant:
                                                                    IconButtonVariant
                                                                        .FillRed50,
                                                                shape: IconButtonShape
                                                                    .RoundedBorder21,
                                                                padding:
                                                                    IconButtonPadding
                                                                        .PaddingAll9,
                                                                child: CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgMinimize)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            18,
                                                                        top: 13,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_logout2"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRalewayRomanSemiBold16RedA200)),
                                                            Spacer(),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgArrowright,
                                                                height:
                                                                    getSize(24),
                                                                width:
                                                                    getSize(24),
                                                                margin:
                                                                    getMargin(
                                                                        top: 10,
                                                                        bottom:
                                                                            9))
                                                          ])))
                                            ])))
                              ])
                        ])))));
  }

  onTapBtnCamera(BuildContext context) async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }

  onTapLogout(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: LogOutPopUpDialog.builder(context),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.only(left: 0),
            ));
  }
}
