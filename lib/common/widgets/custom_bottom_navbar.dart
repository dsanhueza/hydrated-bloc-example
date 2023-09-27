import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../constants/routes.dart';

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.category),
          label: 'Categorias',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.key),
          label: 'Config.',
        )
      ],
      onTap: (index) => {
        if (index == 0)
          {context.go(AppRouter.homePath)}
        else if (index == 1)
          {context.go(AppRouter.categoriesPath)}
        else if (index == 2)
          {context.go(AppRouter.configPath)}
      },
    );
  }
}
