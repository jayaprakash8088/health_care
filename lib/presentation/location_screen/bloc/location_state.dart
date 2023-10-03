// ignore_for_file: must_be_immutable

part of 'location_bloc.dart';

class LocationState extends Equatable {
  LocationState({
    this.searchController,
    this.group2238Controller,
    this.locationModelObj,
  });

  TextEditingController? searchController;

  TextEditingController? group2238Controller;

  LocationModel? locationModelObj;

  @override
  List<Object?> get props => [
        searchController,
        group2238Controller,
        locationModelObj,
      ];
  LocationState copyWith({
    TextEditingController? searchController,
    TextEditingController? group2238Controller,
    LocationModel? locationModelObj,
  }) {
    return LocationState(
      searchController: searchController ?? this.searchController,
      group2238Controller: group2238Controller ?? this.group2238Controller,
      locationModelObj: locationModelObj ?? this.locationModelObj,
    );
  }
}
