import '../models/listrectangle460_item_model.dart';
import 'package:flutter/material.dart';
import 'package:healthcareapp/core/app_export.dart';

// ignore: must_be_immutable
class Listrectangle460ItemWidget extends StatelessWidget {
  Listrectangle460ItemWidget(this.listrectangle460ItemModelObj);

  Listrectangle460ItemModel listrectangle460ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 15,
          ),
          padding: getPadding(
            left: 8,
            top: 10,
            right: 8,
            bottom: 10,
          ),
          decoration: AppDecoration.outlineBluegray501.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  87,
                ),
                width: getHorizontalSize(
                  138,
                ),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle46087x138,
                      height: getVerticalSize(
                        87,
                      ),
                      width: getHorizontalSize(
                        138,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          8,
                        ),
                      ),
                      alignment: Alignment.center,
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgBookmark15x15,
                      height: getSize(
                        15,
                      ),
                      width: getSize(
                        15,
                      ),
                      alignment: Alignment.topRight,
                      margin: getMargin(
                        top: 5,
                        right: 7,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: getHorizontalSize(
                  49,
                ),
                margin: getMargin(
                  top: 10,
                ),
                padding: getPadding(
                  left: 5,
                  top: 1,
                  right: 5,
                  bottom: 1,
                ),
                decoration: AppDecoration.txtFillBluegray50.copyWith(
                  borderRadius: BorderRadiusStyle.txtRoundedBorder2,
                ),
                child: Text(
                  "lbl_covid_19".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRalewayRomanMedium9,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  102,
                ),
                margin: getMargin(
                  top: 5,
                ),
                child: Text(
                  "msg_comparing_the_a".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRalewayRomanSemiBold12,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 6,
                ),
                child: Row(
                  children: [
                    Text(
                      "lbl_jun_12_2021".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRalewayRomanMedium9Gray500,
                    ),
                    Container(
                      height: getSize(
                        2,
                      ),
                      width: getSize(
                        2,
                      ),
                      margin: getMargin(
                        left: 9,
                        top: 4,
                        bottom: 4,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.gray500,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            1,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 4,
                      ),
                      child: Text(
                        "lbl_6_min_read".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRalewayRomanMedium9,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
