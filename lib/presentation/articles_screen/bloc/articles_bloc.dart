import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listrectangle460_item_model.dart';
import '../models/listunsplash86rvjm9zowy_item_model.dart';
import 'package:healthcareapp/presentation/articles_screen/models/articles_model.dart';
part 'articles_event.dart';
part 'articles_state.dart';

class ArticlesBloc extends Bloc<ArticlesEvent, ArticlesState> {
  ArticlesBloc(ArticlesState initialState) : super(initialState) {
    on<ArticlesInitialEvent>(_onInitialize);
  }

  List<Listrectangle460ItemModel> fillListrectangle460ItemList() {
    return List.generate(3, (index) => Listrectangle460ItemModel());
  }

  List<Listunsplash86rvjm9zowyItemModel> fillListunsplash86rvjm9zowyItemList() {
    return List.generate(3, (index) => Listunsplash86rvjm9zowyItemModel());
  }

  _onInitialize(
    ArticlesInitialEvent event,
    Emitter<ArticlesState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        articlesModelObj: state.articlesModelObj?.copyWith(
            listrectangle460ItemList: fillListrectangle460ItemList(),
            listunsplash86rvjm9zowyItemList:
                fillListunsplash86rvjm9zowyItemList())));
  }
}
