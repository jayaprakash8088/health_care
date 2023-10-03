import 'bloc/location_bloc.dart';
import 'dart:async';
import 'models/location_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:healthcareapp/core/app_export.dart';
import 'package:healthcareapp/widgets/app_bar/appbar_image.dart';
import 'package:healthcareapp/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:healthcareapp/widgets/app_bar/custom_app_bar.dart';
import 'package:healthcareapp/widgets/custom_button.dart';
import 'package:healthcareapp/widgets/custom_search_view.dart';
import 'package:healthcareapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LocationScreen extends StatelessWidget {
  Completer<GoogleMapController> googleMapController = Completer();

  static Widget builder(BuildContext context) {
    return BlocProvider<LocationBloc>(
        create: (context) =>
            LocationBloc(LocationState(locationModelObj: LocationModel()))
              ..add(LocationInitialEvent()),
        child: LocationScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                height: size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  Container(
                      height: size.height,
                      width: double.maxFinite,
                      child: GoogleMap(
                          mapType: MapType.normal,
                          initialCameraPosition: CameraPosition(
                              target: LatLng(
                                  37.43296265331129, -122.08832357078792),
                              zoom: 14.4746),
                          onMapCreated: (GoogleMapController controller) {
                            googleMapController.complete(controller);
                          },
                          zoomControlsEnabled: false,
                          zoomGesturesEnabled: false,
                          myLocationButtonEnabled: false,
                          myLocationEnabled: false)),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: fs.Svg(ImageConstant.imgGroup2219),
                                  fit: BoxFit.cover)),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomAppBar(
                                    height: getVerticalSize(40),
                                    leadingWidth: 64,
                                    leading: AppbarImage(
                                        height: getSize(40),
                                        width: getSize(40),
                                        svgPath: ImageConstant.imgArrowleft,
                                        margin: getMargin(left: 24),
                                        onTap: () {
                                          onTapArrowleft11(context);
                                        }),
                                    centerTitle: true,
                                    title: AppbarSubtitle2(
                                        text: "lbl_ambulance".tr),
                                    styleType: Style.bgShadowBlack90019),
                                BlocSelector<LocationBloc, LocationState,
                                        TextEditingController?>(
                                    selector: (state) => state.searchController,
                                    builder: (context, searchController) {
                                      return CustomSearchView(
                                          focusNode: FocusNode(),
                                          controller: searchController,
                                          hintText: "msg_search_location".tr,
                                          margin: getMargin(
                                              left: 24, top: 43, right: 24),
                                          prefix: Container(
                                              margin: getMargin(
                                                  left: 16,
                                                  top: 11,
                                                  right: 8,
                                                  bottom: 11),
                                              child: CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgSearch)),
                                          prefixConstraints: BoxConstraints(
                                              maxHeight: getVerticalSize(40)),
                                          suffix: Padding(
                                              padding: EdgeInsets.only(
                                                  right: getHorizontalSize(15)),
                                              child: IconButton(
                                                  onPressed: () {
                                                    searchController!.clear();
                                                  },
                                                  icon: Icon(Icons.clear,
                                                      color: Colors
                                                          .grey.shade600))));
                                    }),
                                Spacer(),
                                Container(
                                    margin: getMargin(
                                        left: 10, right: 10, bottom: 27),
                                    padding: getPadding(
                                        left: 10,
                                        top: 14,
                                        right: 10,
                                        bottom: 14),
                                    decoration: AppDecoration.white.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          BlocSelector<
                                                  LocationBloc,
                                                  LocationState,
                                                  TextEditingController?>(
                                              selector: (state) =>
                                                  state.group2238Controller,
                                              builder: (context,
                                                  group2238Controller) {
                                                return CustomTextFormField(
                                                    focusNode: FocusNode(),
                                                    controller:
                                                        group2238Controller,
                                                    hintText:
                                                        "msg_confirm_your_ad"
                                                            .tr,
                                                    variant: TextFormFieldVariant
                                                        .UnderLineBluegray50,
                                                    fontStyle:
                                                        TextFormFieldFontStyle
                                                            .RalewayRomanSemiBold14Gray90001,
                                                    textInputAction:
                                                        TextInputAction.done);
                                              }),
                                          Padding(
                                              padding:
                                                  getPadding(left: 17, top: 15),
                                              child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgLocation26x26,
                                                        height: getSize(26),
                                                        width: getSize(26),
                                                        margin: getMargin(
                                                            top: 5, bottom: 7)),
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                190),
                                                        margin:
                                                            getMargin(left: 17),
                                                        child: Text(
                                                            "msg_1111_abcd_rd_102"
                                                                .tr,
                                                            maxLines: null,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRalewayRomanRegular14Gray700))
                                                  ])),
                                          CustomButton(
                                              height: getVerticalSize(50),
                                              text: "msg_confirm_locatio".tr,
                                              margin: getMargin(
                                                  left: 4, top: 13, right: 4),
                                              fontStyle: ButtonFontStyle
                                                  .RalewayRomanSemiBold14WhiteA700)
                                        ]))
                              ])))
                ]))));
  }

  onTapArrowleft11(BuildContext context) {
    NavigatorService.goBack();
  }
}
