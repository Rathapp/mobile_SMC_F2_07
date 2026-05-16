
import 'package:flutter/material.dart';

import '../models/product_model.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail(this.product,{super.key});
 final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Image.network(product.image,width: 150,height: 150,),
          Text(product.title,)
        ],
      ),
    );
  }
}
