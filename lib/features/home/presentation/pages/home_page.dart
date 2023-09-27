import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_testing3/common/constants/routes.dart';
import 'package:flutter_bloc_testing3/common/widgets/custom_bottom_navbar.dart';
import 'package:go_router/go_router.dart';

import '../../../categories/data/datasources/category_remote.dart';
import '../../../categories/domain/models/category.dart';
import '../../../categories/presentation/bloc/categories_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  selectCategoryAndRoute(BuildContext _context, Category _category) {
    BlocProvider.of<CategoriesBloc>(_context)
        .add(CategoriesEvent.setCategory(category: _category));

    _context.go(AppRouter.categoriesPath);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            child: ListView.separated(
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return BlocListener<CategoriesBloc, CategoriesState>(
                  listener: (context, state) {
                    state.when(
                      initial: () => log('Initial'),
                      onCategorySelect: (category) {
                        context.go(AppRouter.categoriesPath);
                      },
                    );
                  },
                  child: ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<CategoriesBloc>(context)
                          .add(CategoriesEvent.setCategory(category: categories[index]));
                      },
                          // selectCategoryAndRoute(context, categories[index]),
                      child: Text(categories[index].name)),
                );
              },
              separatorBuilder: (context, index) => SizedBox(height: 10),
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomNavbar());
  }
}
