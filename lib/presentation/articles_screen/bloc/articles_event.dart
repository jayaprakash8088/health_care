// ignore_for_file: must_be_immutable

part of 'articles_bloc.dart';

@immutable
abstract class ArticlesEvent extends Equatable {}

class ArticlesInitialEvent extends ArticlesEvent {
  @override
  List<Object?> get props => [];
}
