import 'package:flutter/material.dart';
import 'package:freesh_food_search/components/product_card.dart';
import 'package:freesh_food_search/model/product_model.dart';

class SearchResultView extends StatefulWidget {
  const SearchResultView({Key? key}) : super(key: key);

  @override
  _SearchResultViewState createState() => _SearchResultViewState();
}

class _SearchResultViewState extends State<SearchResultView> {
  @override
  Widget build(BuildContext context) {
    return buildPageBody();
  }

  Scaffold buildPageBody() {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        children: [
          textFieldSearch(),
          Expanded(child: gridViewFruits()),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      title: appBarTitle(),
      actions: [removeAppBarButton()],
    );
  }

  Text appBarTitle() {
    return Text(
      'Search Result',
      style: Theme.of(context).textTheme.headline6,
    );
  }

  IconButton removeAppBarButton() {
    return IconButton(
      onPressed: () {},
      icon: Icon(Icons.delete),
      color: Theme.of(context).colorScheme.onSecondary,
    );
  }

  TextField textFieldSearch() {
    return TextField(
      decoration: InputDecoration(
          hintText: 'Green',
          hintStyle: Theme.of(context).textTheme.bodyText1,
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search,
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.4)),
          suffixIconConstraints: BoxConstraints(maxHeight: 30),
          suffixIcon: buildFabMicrephone()),
    );
  }

  FloatingActionButton buildFabMicrephone() {
    return FloatingActionButton(
      mini: true,
      backgroundColor: Theme.of(context).colorScheme.onSurface,
      child: Icon(Icons.mic),
      onPressed: () {},
    );
  }

  Widget gridViewFruits() {
    return GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: 30),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.81,
        crossAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return ProductCard(
            model: ProductModel('data', 'assets/strawberry.png'));
      },
      itemCount: 5,
    );
  }
}
