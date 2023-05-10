import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';

import '../models/product.dart';

class ItemCard extends StatelessWidget {
  final Product? product;
  final press;
  const ItemCard({
    this.product,
    required this.press,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddin),
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                  color: product!.color,
                  borderRadius: BorderRadius.circular(16)),
              child: Image.asset(product!.image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              product!.title,
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "\$${product!.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
