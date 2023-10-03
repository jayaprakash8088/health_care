// ignore_for_file: must_be_immutable

part of 'pharmacy_bloc.dart';

@immutable
abstract class PharmacyEvent extends Equatable {}

class PharmacyInitialEvent extends PharmacyEvent {
  @override
  List<Object?> get props => [];
}
