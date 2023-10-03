// ignore_for_file: must_be_immutable

part of 'location_bloc.dart';

@immutable
abstract class LocationEvent extends Equatable {}

class LocationInitialEvent extends LocationEvent {
  @override
  List<Object?> get props => [];
}
