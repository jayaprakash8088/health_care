// ignore_for_file: must_be_immutable

part of 'drugs_detail_bloc.dart';

@immutable
abstract class DrugsDetailEvent extends Equatable {}

class DrugsDetailInitialEvent extends DrugsDetailEvent {
  @override
  List<Object?> get props => [];
}
