import '../models/topdoctor_item_model.dart';
import 'package:flutter/material.dart';
import 'package:healthcareapp/core/app_export.dart';

// ignore: must_be_immutable
class TopdoctorItemWidget extends StatelessWidget {
  TopdoctorItemWidget(this.topdoctorItemModelObj);

  TopdoctorItemModel topdoctorItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        top: 7,
        bottom: 7,
      ),
      decoration: AppDecoration.outlineGray200.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder11,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle959111x111,
            height: getSize(
              111,
            ),
            width: getSize(
              111,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                8,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 5,
              bottom: 6,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "msg_dr_marcus_hori2".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRalewayRomanSemiBold18Gray90001,
                ),
                Padding(
                  padding: getPadding(
                    top: 10,
                  ),
                  child: Text(
                    "lbl_chardiologist".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRalewayRomanMedium12Gray500,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 9,
                  ),
                  child: Row(
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
                Padding(
                  padding: getPadding(
                    top: 9,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgLocation,
                        height: getSize(
                          13,
                        ),
                        width: getSize(
                          13,
                        ),
                        margin: getMargin(
                          bottom: 1,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 3,
                        ),
                        child: Text(
                          "lbl_800m_away".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRalewayRomanMedium12Gray500,
                        ),
                      ),
                    ],
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
