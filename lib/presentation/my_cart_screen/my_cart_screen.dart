import '../my_cart_screen/widgets/mycart_item_widget.dart';
import 'bloc/my_cart_bloc.dart';
import 'models/my_cart_model.dart';
import 'models/mycart_item_model.dart';
import 'package:flutter/material.dart';
import 'package:healthcareapp/core/app_export.dart';
import 'package:healthcareapp/widgets/app_bar/appbar_image.dart';
import 'package:healthcareapp/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:healthcareapp/widgets/app_bar/custom_app_bar.dart';
import 'package:healthcareapp/widgets/custom_button.dart';
import 'package:healthcareapp/presentation/my_cart_pop_up_dialog/my_cart_pop_up_dialog.dart';

class MyCartScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<MyCartBloc>(
        create: (context) =>
            MyCartBloc(MyCartState(myCartModelObj: MyCartModel()))
              ..add(MyCartInitialEvent()),
        child: MyCartScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(40),
                leadingWidth: 64,
                leading: AppbarImage(
                    height: getSize(40),
                    width: getSize(40),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24),
                    onTap: () {
                      onTapArrowleft10(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle3(text: "lbl_my_cart".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 20, top: 24, right: 20, bottom: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 1),
                          child: BlocSelector<MyCartBloc, MyCartState,
                                  MyCartModel?>(
                              selector: (state) => state.myCartModelObj,
                              builder: (context, myCartModelObj) {
                                return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(20));
                                    },
                                    itemCount:
                                        myCartModelObj?.mycartItemList.length ??
                                            0,
                                    itemBuilder: (context, index) {
                                      MycartItemModel model = myCartModelObj
                                              ?.mycartItemList[index] ??
                                          MycartItemModel();
                                      return MycartItemWidget(model);
                                    });
                              })),
                      Padding(
                          padding: getPadding(top: 30),
                          child: Text("lbl_payment_detail".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold16)),
                      Padding(
                          padding: getPadding(top: 13),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_subtotal".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular14Gray700),
                                Text("lbl_25_98".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular14Gray700)
                              ])),
                      Padding(
                          padding: getPadding(top: 11),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_taxes".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular14Gray700),
                                Text("lbl_1_00".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular14Gray700)
                              ])),
                      Padding(
                          padding: getPadding(top: 11),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_total".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterSemiBold14),
                                Text("lbl_26_98".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterSemiBold14)
                              ])),
                      Padding(
                          padding: getPadding(top: 14),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.blueGray50)),
                      Padding(
                          padding: getPadding(left: 1, top: 15),
                          child: Text("lbl_payment_method".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold16)),
                      Container(
                          margin: getMargin(left: 1, top: 13, bottom: 5),
                          padding: getPadding(all: 14),
                          decoration: AppDecoration.outlineBluegray50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder11),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(left: 8),
                                    child: Text("lbl_visa".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBlackItalic16)),
                                Padding(
                                    padding: getPadding(top: 4, bottom: 1),
                                    child: Text("lbl_change".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtInterRegular12Gray500))
                              ]))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 20, right: 20, bottom: 26),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: getPadding(top: 4, bottom: 4),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("lbl_total".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterMedium14),
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("lbl_26_982".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterSemiBold18Gray90001))
                              ])),
                      CustomButton(
                          height: getVerticalSize(50),
                          width: getHorizontalSize(192),
                          text: "lbl_checkout".tr,
                          fontStyle: ButtonFontStyle.InterSemiBold14WhiteA700,
                          onTap: () {
                            onTapCheckout(context);
                          })
                    ]))));
  }

  onTapCheckout(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: MyCartPopUpDialog.builder(context),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.only(left: 0),
            ));
  }

  onTapArrowleft10(BuildContext context) {
    NavigatorService.goBack();
  }
}
