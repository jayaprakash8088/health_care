import 'package:equatable/equatable.dart';
import 'listpexelscedricf_item_model.dart';

// ignore: must_be_immutable
class MessageHistoryModel extends Equatable {
  MessageHistoryModel({this.listpexelscedricfItemList = const []});

  List<ListpexelscedricfItemModel> listpexelscedricfItemList;

  MessageHistoryModel copyWith(
      {List<ListpexelscedricfItemModel>? listpexelscedricfItemList}) {
    return MessageHistoryModel(
      listpexelscedricfItemList:
          listpexelscedricfItemList ?? this.listpexelscedricfItemList,
    );
  }

  @override
  List<Object?> get props => [listpexelscedricfItemList];
}
