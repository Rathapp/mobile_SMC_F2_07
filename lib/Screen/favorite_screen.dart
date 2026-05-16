import 'package:evening_class/models/product_model.dart';
import 'package:flutter/material.dart';

import '../data/product.dart';
import '../pages/product_detail.dart';
class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // SizedBox(height: 10,),

          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.68
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return buildItem(context, product);
              },
            ),
          )
        ]
      )
    );
  }

  InkWell buildItem(BuildContext context, Map<String, dynamic> product) {
    return InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=> ProductDetail(Product.fromJson(product))));
          },
          child: Container(
            padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black12),
                boxShadow: [
                  BoxShadow(color: Colors.grey,blurRadius: 1,offset: Offset(0,1)),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRect(
                  // borderRadius: BorderRadius.circular(10),
                  child: Center(child: Image.network(product["image"],width: 100,height: 100))),
              SizedBox(height: 10,),
              Text(product["title"],maxLines:2,overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [Icon(Icons.star,color: Colors.amber,size: 25,),SizedBox(width: 5,),Text(product["rating"]["rate"].toString(),style: TextStyle(fontSize: 18),),],),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("""\$${product["price"].toString()}""",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blueAccent),),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),)
                  ),
              onPressed: (){}, child: Icon(Icons.add,size: 20,color: Colors.white,))],),
              // SizedBox(height: 8,)
            ],
          )
          ),
        );
  }
}
