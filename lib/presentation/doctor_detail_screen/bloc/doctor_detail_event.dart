// ignore_for_file: must_be_immutable

part of 'doctor_detail_bloc.dart';

@immutable
abstract class DoctorDetailEvent extends Equatable {}

class DoctorDetailInitialEvent extends DoctorDetailEvent {
  @override
  List<Object?> get props => [];
}

///event for change ChipView selection
class UpdateChipViewEvent extends DoctorDetailEvent {
  UpdateChipViewEvent({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}
