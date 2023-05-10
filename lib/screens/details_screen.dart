import 'package:ecommerce/components/body.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/screens/details/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/product.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Bodyy(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        IconButton(
            onPressed: null, icon: SvgPicture.asset('assets/icons/search.svg')),
        IconButton(
            onPressed: null, icon: SvgPicture.asset('assets/icons/cart.svg')),
        SizedBox(
          width: kDefaultPaddin,
        )
      ],
    );
  }
}
