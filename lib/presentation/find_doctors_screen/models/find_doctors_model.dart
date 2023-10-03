import 'package:equatable/equatable.dart';
import 'listuser_item_model.dart';
import 'doctors_item_model.dart';

// ignore: must_be_immutable
class FindDoctorsModel extends Equatable {
  FindDoctorsModel(
      {this.listuserItemList = const [], this.doctorsItemList = const []});

  List<ListuserItemModel> listuserItemList;

  List<DoctorsItemModel> doctorsItemList;

  FindDoctorsModel copyWith(
      {List<ListuserItemModel>? listuserItemList,
      List<DoctorsItemModel>? doctorsItemList}) {
    return FindDoctorsModel(
      listuserItemList: listuserItemList ?? this.listuserItemList,
      doctorsItemList: doctorsItemList ?? this.doctorsItemList,
    );
  }

  @override
  List<Object?> get props => [listuserItemList, doctorsItemList];
}
