import 'package:equatable/equatable.dart';
import 'topdoctor_item_model.dart';

// ignore: must_be_immutable
class TopDoctorModel extends Equatable {
  TopDoctorModel({this.topdoctorItemList = const []});

  List<TopdoctorItemModel> topdoctorItemList;

  TopDoctorModel copyWith({List<TopdoctorItemModel>? topdoctorItemList}) {
    return TopDoctorModel(
      topdoctorItemList: topdoctorItemList ?? this.topdoctorItemList,
    );
  }

  @override
  List<Object?> get props => [topdoctorItemList];
}
