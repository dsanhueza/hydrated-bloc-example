import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../domain/models/category.dart';

part 'categories_event.dart';
part 'categories_state.dart';
part 'categories_bloc.freezed.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> with HydratedMixin {
  CategoriesBloc() : super(_Initial()) {
    // Agregar la linea hydrate para que funcione los metodos from y to JSON
    hydrate();
    on<_SetCategory>(_setCategory);
  }

  _setCategory(_SetCategory event, Emitter<CategoriesState> emit) async {
    emit(CategoriesState.onCategorySelect(selectedCategory: event.category));
  }
  
  @override
  CategoriesState? fromJson(Map<String, dynamic> json) {
    // Considerar al cargar la llave con la que se almacena en el metodo toJSON
    final Category jsonToCategory = Category.fromJson(json['selectedCategory']);
    return CategoriesState.onCategorySelect(selectedCategory: jsonToCategory);
  }
  
  @override
  Map<String, dynamic>? toJson(CategoriesState state) {
    // Al almacenar considerar la llave del JSON con el que se guardara el estado
    return state.whenOrNull(onCategorySelect:(selectedCategory) => { 'selectedCategory': selectedCategory });
  }
}
