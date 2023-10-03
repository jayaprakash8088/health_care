import 'bloc/onboarding_four_bloc.dart';
import 'models/onboarding_four_model.dart';
import 'package:flutter/material.dart';
import 'package:healthcareapp/core/app_export.dart';
import 'package:healthcareapp/widgets/custom_button.dart';

class OnboardingFourScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingFourBloc>(
        create: (context) => OnboardingFourBloc(
            OnboardingFourState(onboardingFourModelObj: OnboardingFourModel()))
          ..add(OnboardingFourInitialEvent()),
        child: OnboardingFourScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingFourBloc, OnboardingFourState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 24, top: 16, right: 24, bottom: 16),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgVideocamera,
                            height: getVerticalSize(66),
                            width: getHorizontalSize(59),
                            margin: getMargin(top: 163)),
                        Padding(
                            padding: getPadding(top: 5),
                            child: Text("lbl_helthio".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRalewayRomanBold25)),
                        Padding(
                            padding: getPadding(top: 40),
                            child: Text("msg_let_s_get_start".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRalewayRomanBold22)),
                        Container(
                            width: getHorizontalSize(260),
                            margin: getMargin(left: 33, top: 9, right: 32),
                            child: Text("msg_login_to_enjoy".tr,
                                maxLines: null,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtRalewayRomanMedium16
                                    .copyWith(
                                        letterSpacing:
                                            getHorizontalSize(0.5)))),
                        Spacer(),
                        CustomButton(
                            height: getVerticalSize(56),
                            text: "lbl_login".tr,
                            onTap: () {
                              onTapLogin(context);
                            })
                      ])),
              bottomNavigationBar: CustomButton(
                  height: getVerticalSize(56),
                  text: "lbl_sign_up".tr,
                  margin: getMargin(left: 24, right: 23, bottom: 60),
                  variant: ButtonVariant.OutlineBlue600_1,
                  fontStyle: ButtonFontStyle.RalewayRomanSemiBold16Blue600_1,
                  onTap: () {
                    onTapSignup(context);
                  })));
    });
  }

  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }

  onTapSignup(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpScreen,
    );
  }
}
