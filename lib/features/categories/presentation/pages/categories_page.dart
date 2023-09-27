import 'package:flutter/material.dart';
import 'package:flutter_bloc_testing3/features/categories/presentation/widgets/category_button.dart';

import '../../../../common/widgets/custom_bottom_navbar.dart';
import '../../data/datasources/category_remote.dart';


class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          child: ListView.separated(
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return CategoryButton(category: categories[index]);
            },
            separatorBuilder: (context, index) => SizedBox(height: 10),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavbar(),
    );
  }
}
