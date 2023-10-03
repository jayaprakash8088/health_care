import 'bloc/create_new_password_bloc.dart';
import 'models/create_new_password_model.dart';
import 'package:flutter/material.dart';
import 'package:healthcareapp/core/app_export.dart';
import 'package:healthcareapp/widgets/custom_button.dart';
import 'package:healthcareapp/widgets/custom_text_form_field.dart';
import 'package:healthcareapp/presentation/create_new_password_success_dialog/create_new_password_success_dialog.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<CreateNewPasswordBloc>(
        create: (context) => CreateNewPasswordBloc(CreateNewPasswordState(
            createNewPasswordModelObj: CreateNewPasswordModel()))
          ..add(CreateNewPasswordInitialEvent()),
        child: CreateNewPasswordScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, right: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleft,
                          height: getSize(40),
                          width: getSize(40),
                          onTap: () {
                            onTapImgArrowleft(context);
                          }),
                      Padding(
                          padding: getPadding(top: 40),
                          child: Text("msg_create_new_pass".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRalewayRomanBold24)),
                      Padding(
                          padding: getPadding(top: 14),
                          child: Text("msg_create_your_new".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRalewayRomanRegular16)),
                      BlocSelector<CreateNewPasswordBloc,
                              CreateNewPasswordState, TextEditingController?>(
                          selector: (state) => state.inputController,
                          builder: (context, inputController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: inputController,
                                hintText: "msg_enter_new_passw".tr,
                                margin: getMargin(top: 24),
                                textInputType: TextInputType.visiblePassword,
                                prefix: Container(
                                    margin: getMargin(
                                        left: 24,
                                        top: 16,
                                        right: 16,
                                        bottom: 16),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgCar)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(56)),
                                suffix: Container(
                                    margin: getMargin(
                                        left: 12,
                                        top: 16,
                                        right: 24,
                                        bottom: 16),
                                    child: CustomImageView(
                                        svgPath:
                                            ImageConstant.imgCheckmark24x24)),
                                suffixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(56)));
                          }),
                      BlocBuilder<CreateNewPasswordBloc,
                          CreateNewPasswordState>(builder: (context, state) {
                        return CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: state.inputOneController,
                            hintText: "msg_confirm_passwor".tr,
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
                                  context.read<CreateNewPasswordBloc>().add(
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
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "lbl_create_password".tr,
                          margin: getMargin(top: 24, bottom: 5),
                          onTap: () {
                            onTapCreatepasswordOne(context);
                          })
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapCreatepasswordOne(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: CreateNewPasswordSuccessDialog.builder(context),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.only(left: 0),
            ));
  }
}
