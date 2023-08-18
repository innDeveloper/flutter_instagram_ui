import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final TabController controller;

  const CustomBottomNavigationBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      unselectedLabelColor: Colors.grey,
      labelColor: Colors.black,
      controller: controller,
      indicatorColor: Colors.black,
      tabs: const [
        Tab(icon: Icon(Icons.home)),
        Tab(icon: Icon(Icons.search)),
        Tab(icon: Icon(Icons.add_box)),
        Tab(icon: Icon(Icons.favorite)),
        Tab(icon: Icon(Icons.perm_identity)),
      ],
    );
  }
}
