import 'package:equatable/equatable.dart';
import 'listef58faa9a71e47e_item_model.dart';
import 'listcalciumllysin_item_model.dart';

// ignore: must_be_immutable
class PharmacyModel extends Equatable {
  PharmacyModel(
      {this.listef58faa9a71e47eItemList = const [],
      this.listcalciumllysinItemList = const []});

  List<Listef58faa9a71e47eItemModel> listef58faa9a71e47eItemList;

  List<ListcalciumllysinItemModel> listcalciumllysinItemList;

  PharmacyModel copyWith(
      {List<Listef58faa9a71e47eItemModel>? listef58faa9a71e47eItemList,
      List<ListcalciumllysinItemModel>? listcalciumllysinItemList}) {
    return PharmacyModel(
      listef58faa9a71e47eItemList:
          listef58faa9a71e47eItemList ?? this.listef58faa9a71e47eItemList,
      listcalciumllysinItemList:
          listcalciumllysinItemList ?? this.listcalciumllysinItemList,
    );
  }

  @override
  List<Object?> get props =>
      [listef58faa9a71e47eItemList, listcalciumllysinItemList];
}
