import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/models/category.dart';
import '../bloc/categories_bloc.dart';

class CategoryButton extends StatelessWidget {
  final Category category;
  const CategoryButton({super.key, required this.category});

  selectCategory(BuildContext _context, Category _category) {
    BlocProvider.of<CategoriesBloc>(_context)
        .add(CategoriesEvent.setCategory(category: _category));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesBloc, CategoriesState>(
      builder: (context, state) {
        return state.when(
          initial: () => ElevatedButton(
            onPressed: () => selectCategory(context, category),
            child: Text(
              category.name,
            ),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
          ),
          onCategorySelect: (selectedCategory) => ElevatedButton(
            onPressed: () => selectCategory(context, category),
            child: Text(
              category.name,
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: selectedCategory.id == category.id
                    ? Colors.amber
                    : Colors.purple),
          ),
        );
      },
    );
  }
}
