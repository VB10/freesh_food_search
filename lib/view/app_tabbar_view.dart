import 'package:flutter/material.dart';
import 'package:freesh_food_search/view/search_result_view.dart';

class TabbarPage extends StatelessWidget {
  TabbarPage({Key? key}) : super(key: key);

  final List<MapEntry<Widget, Icon>> _tabItems = [
    MapEntry(SearchResultView(), Icon(Icons.search)),
    MapEntry(Container(), Icon(Icons.search)),
    MapEntry(Container(), Icon(Icons.search)),
    MapEntry(Container(), Icon(Icons.search)),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: buildFabButton(),
          body: TabBarView(children: _tabItems.map((e) => e.key).toList()),
          bottomNavigationBar: BottomAppBar(
            child: _buildTabBar(context),
          )),
    );
  }

  FloatingActionButton buildFabButton() {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {},
    );
  }

  TabBar _buildTabBar(BuildContext context) {
    return TabBar(
      tabs: _tabItems.map((e) => Tab(icon: e.value)).toList(),
    );
  }
}
