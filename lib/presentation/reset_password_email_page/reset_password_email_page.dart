import 'bloc/reset_password_email_bloc.dart';
import 'models/reset_password_email_model.dart';
import 'package:flutter/material.dart';
import 'package:healthcareapp/core/app_export.dart';
import 'package:healthcareapp/widgets/custom_button.dart';
import 'package:healthcareapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordEmailPage extends StatefulWidget {
  @override
  _ResetPasswordEmailPageState createState() => _ResetPasswordEmailPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ResetPasswordEmailBloc>(
      create: (context) => ResetPasswordEmailBloc(ResetPasswordEmailState(
        resetPasswordEmailModelObj: ResetPasswordEmailModel(),
      ))
        ..add(ResetPasswordEmailInitialEvent()),
      child: ResetPasswordEmailPage(),
    );
  }
}

class _ResetPasswordEmailPageState extends State<ResetPasswordEmailPage>
    with AutomaticKeepAliveClientMixin<ResetPasswordEmailPage> {
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
                  padding: getPadding(
                    left: 24,
                    top: 24,
                    right: 24,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      BlocSelector<ResetPasswordEmailBloc,
                          ResetPasswordEmailState, TextEditingController?>(
                        selector: (state) => state.emailController,
                        builder: (context, emailController) {
                          return CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: emailController,
                            hintText: "lbl_xyz_gmail_com".tr,
                            variant: TextFormFieldVariant.OutlineBlue600,
                            fontStyle: TextFormFieldFontStyle
                                .RalewayRomanMedium16Gray900,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.emailAddress,
                            prefix: Container(
                              margin: getMargin(
                                left: 24,
                                top: 16,
                                right: 16,
                                bottom: 16,
                              ),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgClock,
                              ),
                            ),
                            prefixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(
                                56,
                              ),
                            ),
                            suffix: Container(
                              margin: getMargin(
                                left: 30,
                                top: 20,
                                right: 24,
                                bottom: 20,
                              ),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgCheckmark16x16,
                              ),
                            ),
                            suffixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(
                                56,
                              ),
                            ),
                          );
                        },
                      ),
                      CustomButton(
                        height: getVerticalSize(
                          56,
                        ),
                        text: "lbl_send_otp".tr,
                        margin: getMargin(
                          top: 32,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
