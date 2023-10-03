import '../models/home_item_model.dart';
import 'package:flutter/material.dart';
import 'package:healthcareapp/core/app_export.dart';

// ignore: must_be_immutable
class HomeItemWidget extends StatelessWidget {
  HomeItemWidget(this.homeItemModelObj);

  HomeItemModel homeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 7,
        top: 8,
        right: 7,
        bottom: 8,
      ),
      decoration: AppDecoration.outlineGray2001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: getVerticalSize(
                83,
              ),
              width: getHorizontalSize(
                105,
              ),
              margin: getMargin(
                right: 1,
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse8871x71,
                    height: getSize(
                      71,
                    ),
                    width: getSize(
                      71,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        35,
                      ),
                    ),
                    alignment: Alignment.bottomLeft,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgStar,
                          height: getSize(
                            16,
                          ),
                          width: getSize(
                            16,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 4,
                            top: 1,
                          ),
                          child: Text(
                            "lbl_4_7".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRalewayRomanMedium12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 17,
            ),
            child: Text(
              homeItemModelObj.nameTxt,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRalewayRomanSemiBold16Gray700,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 9,
            ),
            child: Text(
              "lbl_chardiologist".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRalewayRomanMedium14Gray500,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 6,
              bottom: 3,
            ),
            child: Row(
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgLocation,
                  height: getSize(
                    16,
                  ),
                  width: getSize(
                    16,
                  ),
                  margin: getMargin(
                    bottom: 2,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 8,
                    top: 1,
                  ),
                  child: Text(
                    "lbl_800m_away".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRalewayRomanMedium14Gray500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
