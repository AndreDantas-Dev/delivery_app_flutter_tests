import 'package:delivery_app/features/categories/categories_page.dart';
import 'package:delivery_app/features/categories/categories_view_model.dart';
import 'package:delivery_app/services/service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class _PageInfo {
  final Widget page;
  final Widget tabBarIcon;

  _PageInfo(this.page, this.tabBarIcon);
}

class HomeTab extends StatelessWidget {
  final List<_PageInfo> pages = [
    _PageInfo(
        CategoriesPage(
          viewModel: CategoriesViewModel(service: Service()),
        ),
        Icon(Icons.view_list)),
    _PageInfo(
        CategoriesPage(
          viewModel: CategoriesViewModel(service: Service()),
        ),
        Icon(Icons.shopping_cart)),
    _PageInfo(
        CategoriesPage(
          viewModel: CategoriesViewModel(service: Service()),
        ),
        Icon(Icons.person)),
  ];
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
            items: pages
                .map((e) => BottomNavigationBarItem(icon: e.tabBarIcon))
                .toList()),
        tabBuilder: (context, index) {
          return pages[index].page;
        });
  }
}
