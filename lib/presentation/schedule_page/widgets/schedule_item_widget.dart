import '../models/schedule_item_model.dart';
import 'package:flutter/material.dart';
import 'package:healthcareapp/core/app_export.dart';

// ignore: must_be_immutable
class ScheduleItemWidget extends StatelessWidget {
  ScheduleItemWidget(this.scheduleItemModelObj);

  ScheduleItemModel scheduleItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Container(
        padding: getPadding(
          left: 15,
          top: 14,
          right: 15,
          bottom: 14,
        ),
        decoration: AppDecoration.outlineGray200.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: getPadding(
                right: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      bottom: 7,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          scheduleItemModelObj.doctornameTxt,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRalewayRomanSemiBold18Gray90001,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 4,
                          ),
                          child: Text(
                            scheduleItemModelObj.specialtyTxt,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRalewayRomanMedium12Gray500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgPexelscedricf46x461,
                    height: getSize(
                      46,
                    ),
                    width: getSize(
                      46,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        23,
                      ),
                    ),
                    margin: getMargin(
                      top: 2,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                top: 24,
                right: 47,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgCalendar15x15,
                    height: getSize(
                      15,
                    ),
                    width: getSize(
                      15,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 5,
                    ),
                    child: Text(
                      scheduleItemModelObj.dateTxt,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRalewayRomanMedium12Gray700,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgClock15x15,
                    height: getSize(
                      15,
                    ),
                    width: getSize(
                      15,
                    ),
                    margin: getMargin(
                      left: 12,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 5,
                      top: 1,
                    ),
                    child: Text(
                      scheduleItemModelObj.timeTxt,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRalewayRomanMedium12Gray700,
                    ),
                  ),
                  Container(
                    height: getSize(
                      6,
                    ),
                    width: getSize(
                      6,
                    ),
                    margin: getMargin(
                      left: 17,
                      top: 5,
                      bottom: 4,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.green300,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          3,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 5,
                      bottom: 1,
                    ),
                    child: Text(
                      "lbl_confirmed".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRalewayRomanMedium12Gray700,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                top: 13,
                bottom: 1,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: getHorizontalSize(
                      145,
                    ),
                    padding: getPadding(
                      left: 30,
                      top: 14,
                      right: 48,
                      bottom: 14,
                    ),
                    decoration: AppDecoration.txtFillGray10002.copyWith(
                      borderRadius: BorderRadiusStyle.txtRoundedBorder8,
                    ),
                    child: Text(
                      "lbl_cancel".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRalewayRomanSemiBold14Gray700,
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      145,
                    ),
                    padding: getPadding(
                      left: 30,
                      top: 14,
                      right: 32,
                      bottom: 14,
                    ),
                    decoration: AppDecoration.txtStyle.copyWith(
                      borderRadius: BorderRadiusStyle.txtRoundedBorder8,
                    ),
                    child: Text(
                      "lbl_reschedule".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRalewayRomanSemiBold14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
