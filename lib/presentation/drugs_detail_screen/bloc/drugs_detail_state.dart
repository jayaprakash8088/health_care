// ignore_for_file: must_be_immutable

part of 'drugs_detail_bloc.dart';

class DrugsDetailState extends Equatable {
  DrugsDetailState({this.drugsDetailModelObj});

  DrugsDetailModel? drugsDetailModelObj;

  @override
  List<Object?> get props => [
        drugsDetailModelObj,
      ];
  DrugsDetailState copyWith({DrugsDetailModel? drugsDetailModelObj}) {
    return DrugsDetailState(
      drugsDetailModelObj: drugsDetailModelObj ?? this.drugsDetailModelObj,
    );
  }
}
