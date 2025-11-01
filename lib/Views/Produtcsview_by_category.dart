import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:myapp/Products_shimmer/Category_shimmer.dart';
import 'package:myapp/Products_shimmer/Product_shimmer.dart';
import '../Controllers/Controller.dart';
import '../Models/ProductModel.dart';

class ProdutcsviewByCategory extends StatelessWidget {

  String category="";

  ProdutcsviewByCategory(this.category);

  HomeController homeController=Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
      body: Container(
        child: GetBuilder<HomeController>(builder: (_){
          return homeController.isCategorybyProductsLoding?CategoryShimmer(): GridView.builder(
            gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            shrinkWrap: true,
            itemCount: homeController.productsbycategory.length,
            itemBuilder: (context, index) {
              ProductModel product =
              homeController.productsbycategory[index];
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Image.network(
                        product.image!,
                        height: 80,
                        width: 80,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 10),
                      Text(
                        product.title!,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Price: ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                product.price.toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                                size: 18,
                              ),
                              Text(
                                product.rating!.rate.toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        }
        ),
      ),
    );
  }
}
