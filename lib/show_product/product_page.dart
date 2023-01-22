import 'package:flutter/material.dart';
import 'package:leboncoin/repository/product_repository.dart';
import 'package:leboncoin/show_product/widgets/product_list.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return ProductList(
      ProductRepository().getAllProducts(),
      AppLocalizations.of(context)!.adverts,
    );
  }
}
