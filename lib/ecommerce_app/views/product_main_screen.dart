import 'package:flutter/material.dart';
import 'package:gsg_project/ecommerce_app/views/product_widget.dart';
import '../../dummy_data_ecommerce.dart';
import '../models/product.dart';

class ProductMainScreen extends StatelessWidget {

 List<Product> convertMapsToProduct(){
    return data.map((e) => Product.fromJson(e)).toList();
  }

  const ProductMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'e-commerce App',
        ),
      ),
      body: ListView(
        children: convertMapsToProduct().map((e) => ProductWidget(e)).toList(),
      ),
    );
  }
}
