import 'bloc/onboarding_three_bloc.dart';
import 'models/onboarding_three_model.dart';
import 'package:flutter/material.dart';
import 'package:healthcareapp/core/app_export.dart';
import 'package:healthcareapp/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingThreeScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingThreeBloc>(
      create: (context) => OnboardingThreeBloc(OnboardingThreeState(
        onboardingThreeModelObj: OnboardingThreeModel(),
      ))
        ..add(OnboardingThreeInitialEvent()),
      child: OnboardingThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingThreeBloc, OnboardingThreeState>(
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
                  begin: Alignment(
                    0.5,
                    0,
                  ),
                  end: Alignment(
                    0.5,
                    1,
                  ),
                  colors: [
                    ColorConstant.blue60001,
                    ColorConstant.blue700,
                  ],
                ),
              ),
              child: Container(
                height: size.height,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.img7xm5,
                      height: getVerticalSize(
                        465,
                      ),
                      width: getHorizontalSize(
                        321,
                      ),
                      alignment: Alignment.topCenter,
                      margin: getMargin(
                        top: 47,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        padding: getPadding(
                          left: 42,
                          top: 33,
                          right: 42,
                          bottom: 33,
                        ),
                        decoration: AppDecoration.white.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL64,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: getHorizontalSize(
                                244,
                              ),
                              margin: getMargin(
                                left: 2,
                                right: 44,
                              ),
                              child: Text(
                                "msg_get_connect_our".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRalewayRomanBold22,
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: getVerticalSize(
                                  8,
                                ),
                                margin: getMargin(
                                  top: 17,
                                ),
                                child: SmoothIndicator(
                                  offset: 0,
                                  count: 3,
                                  size: Size.zero,
                                  effect: ScrollingDotsEffect(
                                    spacing: 4,
                                    activeDotColor: ColorConstant.blue600,
                                    dotColor: ColorConstant.blue100,
                                    dotHeight: getVerticalSize(
                                      8,
                                    ),
                                    dotWidth: getHorizontalSize(
                                      8,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            CustomButton(
                              height: getVerticalSize(
                                56,
                              ),
                              text: "lbl_get_started".tr,
                              margin: getMargin(
                                top: 54,
                                bottom: 2,
                              ),
                              fontStyle:
                                  ButtonFontStyle.InterSemiBold16WhiteA700,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
