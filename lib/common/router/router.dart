import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/categories/presentation/pages/categories_page.dart';
import '../../features/config/presentation/pages/config_page.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../constants/routes.dart';

final router = GoRouter(routes: [
  GoRoute(
    name: AppRouter.homeName,
    path: AppRouter.homePath,
    builder: (context, state) => HomePage(),
  ),
  GoRoute(
    name: AppRouter.categoriesName,
    path: AppRouter.categoriesPath,
    builder: (context, state) => CategoriesPage(),
  ),
  GoRoute(
    name: AppRouter.configName,
    path: AppRouter.configPath,
    builder: (context, state) => ConfigPage(),
  ),
]);
