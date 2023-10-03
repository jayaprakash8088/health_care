import 'package:equatable/equatable.dart';
import 'profile_item_model.dart';

// ignore: must_be_immutable
class ProfileModel extends Equatable {
  ProfileModel({this.profileItemList = const []});

  List<ProfileItemModel> profileItemList;

  ProfileModel copyWith({List<ProfileItemModel>? profileItemList}) {
    return ProfileModel(
      profileItemList: profileItemList ?? this.profileItemList,
    );
  }

  @override
  List<Object?> get props => [profileItemList];
}
