import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class ChipviewgroupthirtysixItemModel extends Equatable {
  ChipviewgroupthirtysixItemModel(
      {this.groupThirtySixTxt = "09:00 AM", this.isSelected = false});

  String groupThirtySixTxt;

  bool isSelected;

  ChipviewgroupthirtysixItemModel copyWith(
      {String? groupThirtySixTxt, bool? isSelected}) {
    return ChipviewgroupthirtysixItemModel(
      groupThirtySixTxt: groupThirtySixTxt ?? this.groupThirtySixTxt,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [groupThirtySixTxt, isSelected];
}
