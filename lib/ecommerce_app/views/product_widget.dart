import 'package:flutter/material.dart';

import '../models/product.dart';

class ProductWidget extends StatelessWidget {
  Product product;
  ProductWidget(this.product);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.network(
            product.image??'',
            errorBuilder: (x,y,z){
              return const Center(
                child: Icon(Icons.broken_image),
              );
            },
          ),
          const SizedBox(height: 5,),
          Text(
            product.title??'Not Defined',
            textAlign: TextAlign.right,
          ),

          const SizedBox(height: 15,),
        ],
      ),
    );
  }
}
