import 'bloc/onboarding_two_bloc.dart';
import 'models/onboarding_two_model.dart';
import 'package:flutter/material.dart';
import 'package:healthcareapp/core/app_export.dart';
import 'package:healthcareapp/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingTwoScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingTwoBloc>(
        create: (context) => OnboardingTwoBloc(
            OnboardingTwoState(onboardingTwoModelObj: OnboardingTwoModel()))
          ..add(OnboardingTwoInitialEvent()),
        child: OnboardingTwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingTwoBloc, OnboardingTwoState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              body: Container(
                  width: size.width,
                  height: size.height,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment(0.5, 0),
                          end: Alignment(0.5, 1),
                          colors: [
                        ColorConstant.blue60001,
                        ColorConstant.blue700
                      ])),
                  child: Container(
                      height: size.height,
                      width: double.maxFinite,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        CustomImageView(
                            imagePath: ImageConstant.img7xm2,
                            height: getVerticalSize(467),
                            width: getHorizontalSize(317),
                            alignment: Alignment.topCenter,
                            margin: getMargin(top: 52)),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                                padding: getPadding(
                                    left: 42, top: 33, right: 42, bottom: 33),
                                decoration: AppDecoration.white.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderTL64),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          width: getHorizontalSize(230),
                                          margin: getMargin(left: 2, right: 58),
                                          child: Text("msg_find_a_lot_of_s".tr,
                                              maxLines: null,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRalewayRomanBold22)),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              height: getVerticalSize(8),
                                              margin: getMargin(top: 13),
                                              child: SmoothIndicator(
                                                  offset: 0,
                                                  count: 3,
                                                  size: Size.zero,
                                                  effect: ScrollingDotsEffect(
                                                      spacing: 4,
                                                      activeDotColor:
                                                          ColorConstant.blue600,
                                                      dotColor:
                                                          ColorConstant.blue100,
                                                      dotHeight:
                                                          getVerticalSize(8),
                                                      dotWidth:
                                                          getHorizontalSize(
                                                              8))))),
                                      Padding(
                                          padding:
                                              getPadding(top: 54, bottom: 2),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                GestureDetector(
                                                    onTap: () {
                                                      onTapTxtSkip(context);
                                                    },
                                                    child: Padding(
                                                        padding: getPadding(
                                                            top: 20,
                                                            bottom: 18),
                                                        child: Text(
                                                            "lbl_skip".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterRegular14))),
                                                CustomButton(
                                                    height: getVerticalSize(56),
                                                    width:
                                                        getHorizontalSize(145),
                                                    text: "lbl_next".tr,
                                                    fontStyle: ButtonFontStyle
                                                        .InterSemiBold16WhiteA700,
                                                    onTap: () {
                                                      onTapNext(context);
                                                    })
                                              ]))
                                    ])))
                      ])))));
    });
  }

  onTapTxtSkip(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.onboardingFourScreen,
    );
  }

  onTapNext(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.onboardingThreeScreen,
    );
  }
}
