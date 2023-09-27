import 'package:flutter/material.dart';
import 'package:flutter_bloc_testing3/common/widgets/custom_bottom_navbar.dart';

class ConfigPage extends StatelessWidget {
  const ConfigPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Config'),
      ),
      body: Container(
        child: Center(
          child: Text('Config'),
        ),
      ),
      bottomNavigationBar: CustomBottomNavbar(),
    );
  }
}