import 'bloc/reset_password_phone_bloc.dart';
import 'models/reset_password_phone_model.dart';
import 'package:flutter/material.dart';
import 'package:healthcareapp/core/app_export.dart';
import 'package:healthcareapp/widgets/custom_button.dart';
import 'package:healthcareapp/widgets/custom_text_form_field.dart';

class ResetPasswordPhonePage extends StatefulWidget {
  @override
  _ResetPasswordPhonePageState createState() => _ResetPasswordPhonePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ResetPasswordPhoneBloc>(
        create: (context) => ResetPasswordPhoneBloc(ResetPasswordPhoneState(
            resetPasswordPhoneModelObj: ResetPasswordPhoneModel()))
          ..add(ResetPasswordPhoneInitialEvent()),
        child: ResetPasswordPhonePage());
  }

  onTapSendotp(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.resetPasswordVerifyCodeScreen,
    );
  }
}

class _ResetPasswordPhonePageState extends State<ResetPasswordPhonePage>
    with AutomaticKeepAliveClientMixin<ResetPasswordPhonePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Padding(
                          padding: getPadding(left: 24, top: 24, right: 24),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                BlocSelector<
                                        ResetPasswordPhoneBloc,
                                        ResetPasswordPhoneState,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.mobileNoController,
                                    builder: (context, mobileNoController) {
                                      return CustomTextFormField(
                                          focusNode: FocusNode(),
                                          controller: mobileNoController,
                                          hintText: "lbl_1234567890".tr,
                                          variant: TextFormFieldVariant
                                              .OutlineBlue600,
                                          padding:
                                              TextFormFieldPadding.PaddingT16_2,
                                          fontStyle: TextFormFieldFontStyle
                                              .RalewayRomanMedium16Gray900,
                                          textInputAction: TextInputAction.done,
                                          textInputType: TextInputType.phone,
                                          prefix: Container(
                                              margin: getMargin(
                                                  left: 24,
                                                  top: 16,
                                                  right: 16,
                                                  bottom: 16),
                                              child: CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgCall)),
                                          prefixConstraints: BoxConstraints(
                                              maxHeight: getVerticalSize(56)));
                                    }),
                                CustomButton(
                                    height: getVerticalSize(56),
                                    text: "lbl_send_otp".tr,
                                    margin: getMargin(top: 32),
                                    onTap: () {
                                      onTapSendotp(context);
                                    })
                              ]))
                    ])))));
  }

  onTapSendotp(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.resetPasswordVerifyCodeScreen,
    );
  }
}
