import '../models/chipviewgroupthirtysix_item_model.dart';
import 'package:flutter/material.dart';
import 'package:healthcareapp/core/app_export.dart';

// ignore: must_be_immutable
class ChipviewgroupthirtysixItemWidget extends StatelessWidget {
  ChipviewgroupthirtysixItemWidget(this.chipviewgroupthirtysixItemModelObj,
      {this.onSelectedChipView});

  ChipviewgroupthirtysixItemModel chipviewgroupthirtysixItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: getPadding(
        left: 25,
        right: 25,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        chipviewgroupthirtysixItemModelObj.groupThirtySixTxt,
        textAlign: TextAlign.left,
        style: TextStyle(
          color: chipviewgroupthirtysixItemModelObj.isSelected
              ? ColorConstant.gray400
              : ColorConstant.gray90001,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: chipviewgroupthirtysixItemModelObj.isSelected,
      backgroundColor: ColorConstant.whiteA700,
      selectedColor: ColorConstant.whiteA700,
      shape: chipviewgroupthirtysixItemModelObj.isSelected
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: ColorConstant.gray10001,
                width: getHorizontalSize(
                  1,
                ),
              ),
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  15,
                ),
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide(
                color: ColorConstant.blueGray10001,
                width: getHorizontalSize(
                  1,
                ),
              ),
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  15,
                ),
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
