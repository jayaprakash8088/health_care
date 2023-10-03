import 'bloc/reset_password_verify_code_bloc.dart';
import 'models/reset_password_verify_code_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:healthcareapp/core/app_export.dart';
import 'package:healthcareapp/widgets/custom_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ResetPasswordVerifyCodeScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ResetPasswordVerifyCodeBloc>(
        create: (context) => ResetPasswordVerifyCodeBloc(
            ResetPasswordVerifyCodeState(
                resetPasswordVerifyCodeModelObj:
                    ResetPasswordVerifyCodeModel()))
          ..add(ResetPasswordVerifyCodeInitialEvent()),
        child: ResetPasswordVerifyCodeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 23, right: 23),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleft,
                          height: getSize(40),
                          width: getSize(40),
                          margin: getMargin(left: 1),
                          onTap: () {
                            onTapImgArrowleft(context);
                          }),
                      Padding(
                          padding: getPadding(left: 1, top: 40),
                          child: Text("msg_enter_verificat".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRalewayRomanBold24)),
                      Container(
                          width: getHorizontalSize(273),
                          margin: getMargin(left: 1, top: 12, right: 54),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_enter_code_that2".tr,
                                    style: TextStyle(
                                        color: ColorConstant.blueGray300,
                                        fontSize: getFontSize(16),
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w500)),
                                TextSpan(
                                    text: "lbl_08528188".tr,
                                    style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(16),
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w500))
                              ]),
                              textAlign: TextAlign.left)),
                      Padding(
                          padding: getPadding(left: 1, top: 31),
                          child: BlocSelector<
                                  ResetPasswordVerifyCodeBloc,
                                  ResetPasswordVerifyCodeState,
                                  TextEditingController?>(
                              selector: (state) => state.otpController,
                              builder: (context, otpController) {
                                return PinCodeTextField(
                                    appContext: context,
                                    controller: otpController,
                                    length: 4,
                                    obscureText: false,
                                    obscuringCharacter: '*',
                                    keyboardType: TextInputType.number,
                                    autoDismissKeyboard: true,
                                    enableActiveFill: true,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    onChanged: (value) {
                                      otpController?.text = value;
                                    },
                                    textStyle: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(24),
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w700),
                                    pinTheme: PinTheme(
                                        fieldHeight: getHorizontalSize(64),
                                        fieldWidth: getHorizontalSize(64),
                                        shape: PinCodeFieldShape.box,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(16)),
                                        selectedFillColor:
                                            ColorConstant.whiteA700,
                                        activeFillColor:
                                            ColorConstant.whiteA700,
                                        inactiveFillColor:
                                            ColorConstant.whiteA700,
                                        inactiveColor: ColorConstant.blue600,
                                        selectedColor: ColorConstant.blue600,
                                        activeColor: ColorConstant.blue600));
                              })),
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "lbl_verify".tr,
                          margin: getMargin(left: 1, top: 40),
                          onTap: () {
                            onTapVerify(context);
                          }),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(
                                  left: 47, top: 26, right: 48, bottom: 5),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("msg_didn_t_receive_the".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRalewayRomanRegular15
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.5))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtResend(context);
                                        },
                                        child: Padding(
                                            padding: getPadding(left: 4),
                                            child: Text("lbl_resend".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRalewayRomanMedium15)))
                                  ])))
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapVerify(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.createNewPasswordScreen,
    );
  }

  onTapTxtResend(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }
}
