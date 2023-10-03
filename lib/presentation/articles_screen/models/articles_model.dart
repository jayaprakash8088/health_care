import 'package:equatable/equatable.dart';
import 'listrectangle460_item_model.dart';
import 'listunsplash86rvjm9zowy_item_model.dart';

// ignore: must_be_immutable
class ArticlesModel extends Equatable {
  ArticlesModel(
      {this.listrectangle460ItemList = const [],
      this.listunsplash86rvjm9zowyItemList = const []});

  List<Listrectangle460ItemModel> listrectangle460ItemList;

  List<Listunsplash86rvjm9zowyItemModel> listunsplash86rvjm9zowyItemList;

  ArticlesModel copyWith(
      {List<Listrectangle460ItemModel>? listrectangle460ItemList,
      List<Listunsplash86rvjm9zowyItemModel>?
          listunsplash86rvjm9zowyItemList}) {
    return ArticlesModel(
      listrectangle460ItemList:
          listrectangle460ItemList ?? this.listrectangle460ItemList,
      listunsplash86rvjm9zowyItemList: listunsplash86rvjm9zowyItemList ??
          this.listunsplash86rvjm9zowyItemList,
    );
  }

  @override
  List<Object?> get props =>
      [listrectangle460ItemList, listunsplash86rvjm9zowyItemList];
}
