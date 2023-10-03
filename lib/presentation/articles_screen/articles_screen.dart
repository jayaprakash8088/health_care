import '../articles_screen/widgets/listrectangle460_item_widget.dart';
import '../articles_screen/widgets/listunsplash86rvjm9zowy_item_widget.dart';
import 'bloc/articles_bloc.dart';
import 'models/articles_model.dart';
import 'models/listrectangle460_item_model.dart';
import 'models/listunsplash86rvjm9zowy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:healthcareapp/core/app_export.dart';
import 'package:healthcareapp/widgets/app_bar/appbar_image.dart';
import 'package:healthcareapp/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:healthcareapp/widgets/app_bar/custom_app_bar.dart';
import 'package:healthcareapp/widgets/custom_search_view.dart';

class ArticlesScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ArticlesBloc>(
        create: (context) =>
            ArticlesBloc(ArticlesState(articlesModelObj: ArticlesModel()))
              ..add(ArticlesInitialEvent()),
        child: ArticlesScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(40),
                leadingWidth: 64,
                leading: AppbarImage(
                    height: getSize(40),
                    width: getSize(40),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24),
                    onTap: () {
                      onTapArrowleft7(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle3(text: "lbl_articles".tr),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(16),
                      width: getHorizontalSize(4),
                      svgPath: ImageConstant.imgComponent1,
                      margin:
                          getMargin(left: 24, top: 13, right: 24, bottom: 11))
                ]),
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      BlocSelector<ArticlesBloc, ArticlesState,
                              TextEditingController?>(
                          selector: (state) => state.searchController,
                          builder: (context, searchController) {
                            return CustomSearchView(
                                focusNode: FocusNode(),
                                controller: searchController,
                                hintText: "msg_search_articles".tr,
                                margin: getMargin(left: 24, top: 24, right: 24),
                                prefix: Container(
                                    margin: getMargin(
                                        left: 16,
                                        top: 11,
                                        right: 8,
                                        bottom: 11),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgSearch)),
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
                                            color: Colors.grey.shade600))));
                          }),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 24, top: 25),
                              child: Text("msg_popular_article".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtRalewayRomanSemiBold16Gray90001))),
                      Padding(
                          padding: getPadding(left: 25, top: 13, right: 13),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: getHorizontalSize(94),
                                    padding: getPadding(
                                        left: 17,
                                        top: 15,
                                        right: 17,
                                        bottom: 15),
                                    decoration: AppDecoration.txtFillBlue600
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder8),
                                    child: Text("lbl_covid_19".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRalewayRomanSemiBold14WhiteA700)),
                                Container(
                                    width: getHorizontalSize(117),
                                    margin: getMargin(left: 5),
                                    padding: getPadding(
                                        left: 30,
                                        top: 16,
                                        right: 45,
                                        bottom: 16),
                                    decoration: AppDecoration.txtFillBlue600
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder8),
                                    child: Text("lbl_diet".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRalewayRomanSemiBold14WhiteA700)),
                                Container(
                                    width: getHorizontalSize(116),
                                    margin: getMargin(left: 5),
                                    padding: getPadding(
                                        left: 30,
                                        top: 16,
                                        right: 34,
                                        bottom: 16),
                                    decoration: AppDecoration.txtFillBlue600
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder8),
                                    child: Text("lbl_fitness".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRalewayRomanSemiBold14WhiteA700))
                              ])),
                      Padding(
                          padding: getPadding(left: 24, top: 25, right: 18),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("msg_trending_articl".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRalewayRomanSemiBold16Gray90001),
                                Padding(
                                    padding: getPadding(bottom: 4),
                                    child: Text("lbl_see_all".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtRalewayRomanRegular12))
                              ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(232),
                              child: BlocSelector<ArticlesBloc, ArticlesState,
                                      ArticlesModel?>(
                                  selector: (state) => state.articlesModelObj,
                                  builder: (context, articlesModelObj) {
                                    return ListView.separated(
                                        padding: getPadding(left: 24, top: 13),
                                        scrollDirection: Axis.horizontal,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: getVerticalSize(15));
                                        },
                                        itemCount: articlesModelObj
                                                ?.listrectangle460ItemList
                                                .length ??
                                            0,
                                        itemBuilder: (context, index) {
                                          Listrectangle460ItemModel model =
                                              articlesModelObj
                                                          ?.listrectangle460ItemList[
                                                      index] ??
                                                  Listrectangle460ItemModel();
                                          return Listrectangle460ItemWidget(
                                              model);
                                        });
                                  }))),
                      Padding(
                          padding: getPadding(left: 20, top: 23, right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("msg_related_article".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRalewayRomanSemiBold16Black900),
                                Padding(
                                    padding: getPadding(top: 1, bottom: 2),
                                    child: Text("lbl_see_all".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtRalewayRomanRegular12))
                              ])),
                      Padding(
                          padding: getPadding(left: 20, top: 15, right: 20),
                          child: BlocSelector<ArticlesBloc, ArticlesState,
                                  ArticlesModel?>(
                              selector: (state) => state.articlesModelObj,
                              builder: (context, articlesModelObj) {
                                return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(10));
                                    },
                                    itemCount: articlesModelObj
                                            ?.listunsplash86rvjm9zowyItemList
                                            .length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      Listunsplash86rvjm9zowyItemModel model =
                                          articlesModelObj
                                                      ?.listunsplash86rvjm9zowyItemList[
                                                  index] ??
                                              Listunsplash86rvjm9zowyItemModel();
                                      return Listunsplash86rvjm9zowyItemWidget(
                                          model);
                                    });
                              }))
                    ]))));
  }

  onTapArrowleft7(BuildContext context) {
    NavigatorService.goBack();
  }
}
