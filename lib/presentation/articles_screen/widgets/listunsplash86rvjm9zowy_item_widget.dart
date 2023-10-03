import '../models/listunsplash86rvjm9zowy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:healthcareapp/core/app_export.dart';

// ignore: must_be_immutable
class Listunsplash86rvjm9zowyItemWidget extends StatelessWidget {
  Listunsplash86rvjm9zowyItemWidget(this.listunsplash86rvjm9zowyItemModelObj);

  Listunsplash86rvjm9zowyItemModel listunsplash86rvjm9zowyItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 5,
      ),
      decoration: AppDecoration.outlineBluegray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUnsplash86rvjm9zowy59x59,
            height: getSize(
              59,
            ),
            width: getSize(
              59,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                8,
              ),
            ),
            margin: getMargin(
              bottom: 1,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 12,
              top: 6,
              bottom: 5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: getHorizontalSize(
                    206,
                  ),
                  child: Text(
                    listunsplash86rvjm9zowyItemModelObj.the25HealthiestOneTxt,
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRalewayRomanSemiBold12,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 3,
                  ),
                  child: Row(
                    children: [
                      Text(
                        listunsplash86rvjm9zowyItemModelObj.languageTxt,
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
                          left: 7,
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
                          listunsplash86rvjm9zowyItemModelObj.timeTxt,
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
          CustomImageView(
            svgPath: ImageConstant.imgBookmark12x10,
            height: getVerticalSize(
              12,
            ),
            width: getHorizontalSize(
              10,
            ),
            margin: getMargin(
              left: 27,
              top: 8,
              bottom: 39,
            ),
          ),
        ],
      ),
    );
  }
}
