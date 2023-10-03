import '../models/listcalciumllysin_item_model.dart';
import 'package:flutter/material.dart';
import 'package:healthcareapp/core/app_export.dart';

// ignore: must_be_immutable
class ListcalciumllysinItemWidget extends StatelessWidget {
  ListcalciumllysinItemWidget(this.listcalciumllysinItemModelObj);

  ListcalciumllysinItemModel listcalciumllysinItemModelObj;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 17,
          ),
          padding: getPadding(
            left: 7,
            top: 8,
            right: 7,
            bottom: 8,
          ),
          decoration: AppDecoration.outlineBluegray50.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder11,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCalciumllysin68x66,
                height: getVerticalSize(
                  68,
                ),
                width: getHorizontalSize(
                  66,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    34,
                  ),
                ),
                alignment: Alignment.center,
                margin: getMargin(
                  top: 10,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 10,
                ),
                child: Text(
                  listcalciumllysinItemModelObj.productnameTxt,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRalewayRomanSemiBold14Gray90001,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 7,
                ),
                child: Text(
                  "lbl_75ml".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRalewayRomanMedium12Gray500,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 2,
                ),
                child: Row(
                  children: [
                    Container(
                      height: getVerticalSize(
                        17,
                      ),
                      width: getHorizontalSize(
                        74,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: getHorizontalSize(
                                71,
                              ),
                              margin: getMargin(
                                right: 3,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    listcalciumllysinItemModelObj.priceTxt,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRalewayRomanSemiBold14Black900,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 3,
                                      bottom: 3,
                                    ),
                                    child: Text(
                                      listcalciumllysinItemModelObj.priceOneTxt,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRalewayRomanSemiBold8,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: getVerticalSize(
                                1,
                              ),
                              width: getHorizontalSize(
                                29,
                              ),
                              margin: getMargin(
                                bottom: 6,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.gray70001,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgPlus,
                      height: getSize(
                        18,
                      ),
                      width: getSize(
                        18,
                      ),
                      margin: getMargin(
                        left: 11,
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
