import 'package:flutter/material.dart';

import 'package:freesh_food_search/model/product_model.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.model,
  }) : super(key: key);
  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Theme.of(context).scaffoldBackgroundColor,
        elevation: 10,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(child: Image.asset(model.imageURL)),
              Text(model.title, style: Theme.of(context).textTheme.bodyText1),
            ],
          ),
        ));
  }
}
