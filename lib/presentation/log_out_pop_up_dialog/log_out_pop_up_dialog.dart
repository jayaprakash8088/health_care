import 'bloc/log_out_pop_up_bloc.dart';
import 'models/log_out_pop_up_model.dart';
import 'package:flutter/material.dart';
import 'package:healthcareapp/core/app_export.dart';
import 'package:healthcareapp/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class LogOutPopUpDialog extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<LogOutPopUpBloc>(
      create: (context) => LogOutPopUpBloc(LogOutPopUpState(
        logOutPopUpModelObj: LogOutPopUpModel(),
      ))
        ..add(LogOutPopUpInitialEvent()),
      child: LogOutPopUpDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(
        327,
      ),
      padding: getPadding(
        left: 27,
        top: 49,
        right: 27,
        bottom: 49,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: getMargin(
              top: 2,
            ),
            color: ColorConstant.red50,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.circleBorder51,
            ),
            child: Container(
              height: getSize(
                103,
              ),
              width: getSize(
                103,
              ),
              padding: getPadding(
                all: 22,
              ),
              decoration: AppDecoration.fillRed50.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder51,
              ),
              child: Stack(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgMinimize,
                    height: getSize(
                      58,
                    ),
                    width: getSize(
                      58,
                    ),
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: getHorizontalSize(
              246,
            ),
            margin: getMargin(
              left: 13,
              top: 52,
              right: 13,
            ),
            child: Text(
              "msg_are_you_sure_to".tr,
              maxLines: null,
              textAlign: TextAlign.center,
              style: AppStyle.txtInterBold20,
            ),
          ),
          CustomButton(
            height: getVerticalSize(
              56,
            ),
            text: "lbl_log_out".tr,
            margin: getMargin(
              top: 27,
            ),
            variant: ButtonVariant.FillRedA200,
          ),
          Padding(
            padding: getPadding(
              top: 18,
            ),
            child: Text(
              "lbl_cancel".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterSemiBold16Blue600,
            ),
          ),
        ],
      ),
    );
  }
}
