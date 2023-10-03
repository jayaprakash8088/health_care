import '../models/profile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:healthcareapp/core/app_export.dart';

// ignore: must_be_immutable
class ProfileItemWidget extends StatelessWidget {
  ProfileItemWidget(this.profileItemModelObj);

  ProfileItemModel profileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Padding(
        padding: getPadding(
          right: 63,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              svgPath: ImageConstant.imgLocationWhiteA700,
              height: getSize(
                32,
              ),
              width: getSize(
                32,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 5,
              ),
              child: Text(
                profileItemModelObj.heartrateTxt,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRalewayRomanSemiBold10,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 3,
              ),
              child: Text(
                profileItemModelObj.k215bpmTxt,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRalewayRomanSemiBold16WhiteA700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
