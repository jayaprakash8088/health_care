import 'package:equatable/equatable.dart';
import 'chipviewgroupthirtysix_item_model.dart';

// ignore: must_be_immutable
class DoctorDetailModel extends Equatable {
  DoctorDetailModel({this.chipviewgroupthirtysixItemList = const []});

  List<ChipviewgroupthirtysixItemModel> chipviewgroupthirtysixItemList;

  DoctorDetailModel copyWith(
      {List<ChipviewgroupthirtysixItemModel>? chipviewgroupthirtysixItemList}) {
    return DoctorDetailModel(
      chipviewgroupthirtysixItemList:
          chipviewgroupthirtysixItemList ?? this.chipviewgroupthirtysixItemList,
    );
  }

  @override
  List<Object?> get props => [chipviewgroupthirtysixItemList];
}
