part of 'categories_bloc.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState.initial() = _Initial;
  const factory CategoriesState.onCategorySelect({ required Category selectedCategory }) = _OnCategorySelect;
}
