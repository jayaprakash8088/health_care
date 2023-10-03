import 'bloc/video_call_bloc.dart';
import 'models/video_call_model.dart';
import 'package:flutter/material.dart';
import 'package:healthcareapp/core/app_export.dart';
import 'package:healthcareapp/widgets/custom_icon_button.dart';

class VideoCallScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<VideoCallBloc>(
      create: (context) => VideoCallBloc(VideoCallState(
        videoCallModelObj: VideoCallModel(),
      ))
        ..add(VideoCallInitialEvent()),
      child: VideoCallScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VideoCallBloc, VideoCallState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
              width: size.width,
              height: size.height,
              decoration: BoxDecoration(
                color: ColorConstant.whiteA700,
                gradient: LinearGradient(
                  begin: Alignment(
                    0.5,
                    0.5,
                  ),
                  end: Alignment(
                    0.5,
                    1,
                  ),
                  colors: [
                    ColorConstant.black90000,
                    ColorConstant.black900B2,
                  ],
                ),
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgVideocall,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                width: double.maxFinite,
                padding: getPadding(
                  left: 20,
                  top: 14,
                  right: 20,
                  bottom: 14,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage112x75,
                      height: getVerticalSize(
                        112,
                      ),
                      width: getHorizontalSize(
                        75,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          15,
                        ),
                      ),
                      alignment: Alignment.centerRight,
                    ),
                    Spacer(),
                    Text(
                      "msg_dr_marcus_hori".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRalewayRomanSemiBold16WhiteA700,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 9,
                      ),
                      child: Text(
                        "lbl_00_05_24".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRalewayRomanMedium14WhiteA700,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 23,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomIconButton(
                            height: 52,
                            width: 52,
                            variant: IconButtonVariant.FillRed300,
                            child: CustomImageView(
                              svgPath: ImageConstant.imgVideocamera52x52,
                            ),
                          ),
                          CustomIconButton(
                            height: 52,
                            width: 52,
                            margin: getMargin(
                              left: 25,
                            ),
                            variant: IconButtonVariant.FillGray50001,
                            child: CustomImageView(
                              svgPath: ImageConstant.imgCall52x52,
                            ),
                          ),
                          CustomIconButton(
                            height: 52,
                            width: 52,
                            margin: getMargin(
                              left: 25,
                            ),
                            variant: IconButtonVariant.FillGray40087,
                            child: CustomImageView(
                              svgPath: ImageConstant.imgMicrophone,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowup,
                      height: getSize(
                        20,
                      ),
                      width: getSize(
                        20,
                      ),
                      margin: getMargin(
                        top: 50,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 1,
                        bottom: 9,
                      ),
                      child: Text(
                        "msg_swipe_back_to_m".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRalewayRomanMedium14WhiteA700,
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
