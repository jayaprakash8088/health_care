import '../models/listuser_item_model.dart';
import 'package:flutter/material.dart';
import 'package:healthcareapp/core/app_export.dart';

// ignore: must_be_immutable
class ListuserItemWidget extends StatelessWidget {
  ListuserItemWidget(this.listuserItemModelObj);

  ListuserItemModel listuserItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: getPadding(
            bottom: 1,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                color: ColorConstant.blue5001,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Container(
                  height: getVerticalSize(
                    56,
                  ),
                  width: getHorizontalSize(
                    64,
                  ),
                  padding: getPadding(
                    left: 16,
                    top: 12,
                    right: 16,
                    bottom: 12,
                  ),
                  decoration: AppDecoration.outlineBlack90019.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Stack(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgUser32x32,
                        height: getSize(
                          32,
                        ),
                        width: getSize(
                          32,
                        ),
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 9,
                ),
                child: Text(
                  listuserItemModelObj.generalTxt,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRalewayRomanRegular13,
                ),
              ),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: ColorConstant.blue5001,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Container(
                height: getVerticalSize(
                  56,
                ),
                width: getHorizontalSize(
                  64,
                ),
                padding: getPadding(
                  left: 16,
                  top: 12,
                  right: 16,
                  bottom: 12,
                ),
                decoration: AppDecoration.outlineBlack90019.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Stack(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgUser3,
                      height: getSize(
                        32,
                      ),
                      width: getSize(
                        32,
                      ),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 10,
              ),
              child: Text(
                listuserItemModelObj.lungsTxt,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRalewayRomanRegular13,
              ),
            ),
          ],
        ),
        Padding(
          padding: getPadding(
            bottom: 1,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                color: ColorConstant.blue5001,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Container(
                  height: getVerticalSize(
                    56,
                  ),
                  width: getHorizontalSize(
                    64,
                  ),
                  padding: getPadding(
                    left: 16,
                    top: 12,
                    right: 16,
                    bottom: 12,
                  ),
                  decoration: AppDecoration.outlineBlack90019.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Stack(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgUser2,
                        height: getSize(
                          32,
                        ),
                        width: getSize(
                          32,
                        ),
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 9,
                ),
                child: Text(
                  listuserItemModelObj.dentistvalueTxt,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRalewayRomanRegular13,
                ),
              ),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: ColorConstant.blue5001,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Container(
                height: getVerticalSize(
                  56,
                ),
                width: getHorizontalSize(
                  64,
                ),
                padding: getPadding(
                  left: 16,
                  top: 12,
                  right: 16,
                  bottom: 12,
                ),
                decoration: AppDecoration.outlineBlack90019.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Stack(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgSearch32x32,
                      height: getSize(
                        32,
                      ),
                      width: getSize(
                        32,
                      ),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 10,
              ),
              child: Text(
                listuserItemModelObj.psychiatristvalueTxt,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRalewayRomanRegular13,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
