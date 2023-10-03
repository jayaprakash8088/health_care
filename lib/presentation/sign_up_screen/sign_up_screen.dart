import 'bloc/sign_up_bloc.dart';
import 'models/sign_up_model.dart';
import 'package:flutter/material.dart';
import 'package:healthcareapp/core/app_export.dart';
import 'package:healthcareapp/widgets/app_bar/appbar_image.dart';
import 'package:healthcareapp/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:healthcareapp/widgets/app_bar/custom_app_bar.dart';
import 'package:healthcareapp/widgets/custom_button.dart';
import 'package:healthcareapp/widgets/custom_checkbox.dart';
import 'package:healthcareapp/widgets/custom_text_form_field.dart';
import 'package:healthcareapp/presentation/sign_up_success_dialog/sign_up_success_dialog.dart';

class SignUpScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpBloc>(
        create: (context) =>
            SignUpBloc(SignUpState(signUpModelObj: SignUpModel()))
              ..add(SignUpInitialEvent()),
        child: SignUpScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(40),
                leadingWidth: 64,
                leading: AppbarImage(
                    height: getSize(40),
                    width: getSize(40),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24),
                    onTap: () {
                      onTapArrowleft1(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle2(text: "lbl_sign_up".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 40, right: 24, bottom: 40),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      BlocSelector<SignUpBloc, SignUpState,
                              TextEditingController?>(
                          selector: (state) => state.enternameController,
                          builder: (context, enternameController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: enternameController,
                                hintText: "lbl_enter_your_name".tr,
                                padding: TextFormFieldPadding.PaddingT16_2,
                                prefix: Container(
                                    margin: getMargin(
                                        left: 24,
                                        top: 16,
                                        right: 16,
                                        bottom: 16),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgUser)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(56)));
                          }),
                      BlocSelector<SignUpBloc, SignUpState,
                              TextEditingController?>(
                          selector: (state) => state.enteremailController,
                          builder: (context, enteremailController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: enteremailController,
                                hintText: "msg_enter_your_emai".tr,
                                margin: getMargin(top: 16),
                                padding: TextFormFieldPadding.PaddingT16_2,
                                textInputType: TextInputType.emailAddress,
                                prefix: Container(
                                    margin: getMargin(
                                        left: 24,
                                        top: 16,
                                        right: 16,
                                        bottom: 16),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgCheckmark)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(56)));
                          }),
                      BlocBuilder<SignUpBloc, SignUpState>(
                          builder: (context, state) {
                        return CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: state.enterpasswordController,
                            hintText: "msg_enter_your_pass".tr,
                            margin: getMargin(top: 16),
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.visiblePassword,
                            prefix: Container(
                                margin: getMargin(
                                    left: 24, top: 16, right: 16, bottom: 16),
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgCar)),
                            prefixConstraints:
                                BoxConstraints(maxHeight: getVerticalSize(56)),
                            suffix: InkWell(
                                onTap: () {
                                  context.read<SignUpBloc>().add(
                                      ChangePasswordVisibilityEvent(
                                          value: !state.isShowPassword));
                                },
                                child: Container(
                                    margin: getMargin(
                                        left: 30,
                                        top: 16,
                                        right: 24,
                                        bottom: 16),
                                    child: CustomImageView(
                                        svgPath: state.isShowPassword
                                            ? ImageConstant.imgCheckmark24x24
                                            : ImageConstant
                                                .imgCheckmark24x24))),
                            suffixConstraints:
                                BoxConstraints(maxHeight: getVerticalSize(56)),
                            isObscureText: state.isShowPassword);
                      }),
                      BlocSelector<SignUpBloc, SignUpState, bool?>(
                          selector: (state) => state.isCheckbox,
                          builder: (context, isCheckbox) {
                            return CustomCheckbox(
                                text: "msg_i_agree_to_the2".tr,
                                iconSize: getHorizontalSize(24),
                                value: isCheckbox,
                                margin: getMargin(top: 16, right: 28),
                                fontStyle: CheckboxFontStyle
                                    .SFProDisplayRegular14Bluegray800,
                                onChange: (value) {
                                  context
                                      .read<SignUpBloc>()
                                      .add(ChangeCheckBoxEvent(value: value));
                                });
                          }),
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "lbl_sign_up".tr,
                          margin: getMargin(top: 29),
                          onTap: () {
                            onTapSignupOne(context);
                          }),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(
                                  left: 44, top: 28, right: 45, bottom: 5),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("msg_already_have_an".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRalewayRomanRegular15
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.5))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtLogIn(context);
                                        },
                                        child: Padding(
                                            padding: getPadding(left: 4),
                                            child: Text("lbl_log_in2".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRalewayRomanMedium15)))
                                  ])))
                    ]))));
  }

  onTapSignupOne(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: SignUpSuccessDialog.builder(context),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.only(left: 0),
            ));
  }

  onTapTxtLogIn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }

  onTapArrowleft1(BuildContext context) {
    NavigatorService.goBack();
  }
}
