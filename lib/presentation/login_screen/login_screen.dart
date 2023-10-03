import 'bloc/login_bloc.dart';
import 'models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:healthcareapp/core/app_export.dart';
import 'package:healthcareapp/widgets/app_bar/appbar_image.dart';
import 'package:healthcareapp/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:healthcareapp/widgets/app_bar/custom_app_bar.dart';
import 'package:healthcareapp/widgets/custom_button.dart';
import 'package:healthcareapp/widgets/custom_text_form_field.dart';
import 'package:healthcareapp/presentation/login_success_dialog/login_success_dialog.dart';
import 'package:healthcareapp/domain/googleauth/google_auth_helper.dart';
import 'package:healthcareapp/domain/facebookauth/facebook_auth_helper.dart';

class LoginScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(LoginState(loginModelObj: LoginModel()))
          ..add(LoginInitialEvent()),
        child: LoginScreen());
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
                      onTapArrowleft(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle2(text: "lbl_login".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 40, right: 24, bottom: 40),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      BlocSelector<LoginBloc, LoginState,
                              TextEditingController?>(
                          selector: (state) => state.emailController,
                          builder: (context, emailController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: emailController,
                                hintText: "msg_enter_your_emai".tr,
                                padding: TextFormFieldPadding.PaddingT16,
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
                      BlocBuilder<LoginBloc, LoginState>(
                          builder: (context, state) {
                        return CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: state.passwordController,
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
                                  context.read<LoginBloc>().add(
                                      ChangePasswordVisibilityEvent(
                                          value: !state.isShowPassword));
                                },
                                child: Container(
                                    margin: getMargin(
                                        left: 12,
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
                      Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtForgotPassword(context);
                              },
                              child: Padding(
                                  padding: getPadding(top: 10),
                                  child: Text("msg_forgot_password".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtRalewayRomanMedium14)))),
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "lbl_login".tr,
                          margin: getMargin(top: 32),
                          onTap: () {
                            onTapLoginOne(context);
                          }),
                      Padding(
                          padding: getPadding(left: 48, top: 26, right: 48),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("msg_don_t_have_an_a2".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRalewayRomanRegular15
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.5)))),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtSignUp(context);
                                    },
                                    child: Padding(
                                        padding: getPadding(left: 4, top: 1),
                                        child: Text("lbl_sign_up".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRalewayRomanMedium15)))
                              ])),
                      Padding(
                          padding: getPadding(top: 32),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(top: 8, bottom: 9),
                                    child: SizedBox(
                                        width: getHorizontalSize(137),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.gray200))),
                                Text("lbl_or".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRalewayRomanRegular16),
                                Padding(
                                    padding: getPadding(top: 8, bottom: 9),
                                    child: SizedBox(
                                        width: getHorizontalSize(137),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.gray200)))
                              ])),
                      GestureDetector(
                          onTap: () {
                            onTapRowgoogle(context);
                          },
                          child: Container(
                              margin: getMargin(top: 29),
                              padding: getPadding(
                                  left: 18, top: 16, right: 18, bottom: 16),
                              decoration: AppDecoration.outlineGray200.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgGoogle,
                                    height: getVerticalSize(20),
                                    width: getHorizontalSize(19),
                                    margin: getMargin(top: 1, bottom: 1)),
                                Padding(
                                    padding: getPadding(left: 52, top: 3),
                                    child: Text("msg_sign_in_with_go".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtRalewayRomanSemiBold16))
                              ]))),
                      Container(
                          margin: getMargin(top: 16),
                          padding: getPadding(
                              left: 18, top: 16, right: 18, bottom: 16),
                          decoration: AppDecoration.outlineGray200.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgCamera,
                                height: getVerticalSize(20),
                                width: getHorizontalSize(16),
                                margin: getMargin(top: 1, bottom: 1),
                                onTap: () {
                                  onTapImgCamera(context);
                                }),
                            Padding(
                                padding: getPadding(left: 60, top: 3),
                                child: Text("msg_sign_in_with_ap".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRalewayRomanSemiBold16))
                          ])),
                      GestureDetector(
                          onTap: () {
                            onTapRowfacebook(context);
                          },
                          child: Container(
                              margin: getMargin(top: 16, bottom: 5),
                              padding: getPadding(
                                  left: 18, top: 16, right: 18, bottom: 16),
                              decoration: AppDecoration.outlineGray200.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8),
                              child: Row(children: [
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: getMargin(top: 1, bottom: 1),
                                    color: ColorConstant.blue60002,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8),
                                    child: Container(
                                        height: getSize(20),
                                        width: getSize(20),
                                        padding: getPadding(
                                            left: 6,
                                            top: 4,
                                            right: 6,
                                            bottom: 4),
                                        decoration: AppDecoration.fillBlue60002
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder8),
                                        child: Stack(children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgFacebook,
                                              height: getVerticalSize(11),
                                              width: getHorizontalSize(6),
                                              alignment: Alignment.center)
                                        ]))),
                                Padding(
                                    padding: getPadding(left: 43, top: 3),
                                    child: Text("msg_sign_in_with_fa".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtRalewayRomanSemiBold16))
                              ])))
                    ]))));
  }

  onTapTxtForgotPassword(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.resetPasswordEmailTabContainerScreen,
    );
  }

  onTapLoginOne(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: LoginSuccessDialog.builder(context),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.only(left: 0),
            ));
  }

  onTapTxtSignUp(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpScreen,
    );
  }

  onTapRowgoogle(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('user data is empty')));
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }

  onTapImgCamera(BuildContext context) async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }

  onTapRowfacebook(BuildContext context) async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }

  onTapArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }
}
