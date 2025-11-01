import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/Models/ProductModel.dart';

class ProductsDetailsPage extends StatelessWidget {

  ProductModel product;

  ProductsDetailsPage(this.product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Column(
          children: [
            Image.network(product.image!,width: Get.width,height: 200,fit: BoxFit.cover,),
            SizedBox(height: 10,),
            Row(
              children: [
                Expanded(
                  flex: 3,
                    child: Text(product.title!,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)),
                Expanded(
                  flex: 1,
                    child: Text(product.price.toString(),style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),))
              ],
            )
          ],
        ),
      ),
    );
  }
}
