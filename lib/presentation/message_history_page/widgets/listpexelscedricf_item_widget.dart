import '../models/listpexelscedricf_item_model.dart';
import 'package:flutter/material.dart';
import 'package:healthcareapp/core/app_export.dart';

// ignore: must_be_immutable
class ListpexelscedricfItemWidget extends StatelessWidget {
  ListpexelscedricfItemWidget(this.listpexelscedricfItemModelObj);

  ListpexelscedricfItemModel listpexelscedricfItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgPexelscedricf50x471,
          height: getVerticalSize(
            50,
          ),
          width: getHorizontalSize(
            47,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              25,
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            top: 5,
            bottom: 5,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                listpexelscedricfItemModelObj.nameTxt,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterSemiBold16,
              ),
              Padding(
                padding: getPadding(
                  top: 4,
                ),
                child: Text(
                  listpexelscedricfItemModelObj.symptomsTxt,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular12Gray500,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: getPadding(
            top: 9,
            bottom: 7,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                listpexelscedricfItemModelObj.temperatureTxt,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterRegular12Gray700,
              ),
              Container(
                width: getSize(
                  13,
                ),
                margin: getMargin(
                  top: 5,
                ),
                padding: getPadding(
                  left: 4,
                  top: 1,
                  right: 4,
                  bottom: 1,
                ),
                decoration: AppDecoration.txtFillBlue600.copyWith(
                  borderRadius: BorderRadiusStyle.txtRoundedBorder8,
                ),
                child: Text(
                  listpexelscedricfItemModelObj.severityTxt,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterSemiBold9,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
