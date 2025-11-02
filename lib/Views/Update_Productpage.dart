import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/Controllers/Controller.dart';

class UpdateProductpage extends StatelessWidget {
  UpdateProductpage({super.key});

  final TextEditingController productIdClr = TextEditingController();
  final TextEditingController productClr = TextEditingController();
  final TextEditingController priceClr = TextEditingController();
  final TextEditingController descripsionClr = TextEditingController();

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: TextField(
                controller: productIdClr,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Product Id",
                  contentPadding: EdgeInsets.only(left: 10),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: TextField(
                controller: productClr,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Product Name",
                  contentPadding: EdgeInsets.only(left: 10),
                ),
              ),
            ),
            SizedBox(height: 10),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: TextField(
                controller: priceClr,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Product Price",
                  contentPadding: EdgeInsets.only(left: 10),
                ),
              ),
            ),
            SizedBox(height: 10),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: TextField(
                controller: descripsionClr,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Product description",
                  contentPadding: EdgeInsets.only(left: 10),
                ),
              ),
            ),

            SizedBox(height: 15),

            InkWell(
              onTap: () {
                Map<String, dynamic> product = {
                  "name": productClr.text,
                  "price": priceClr.text,
                  "description": descripsionClr.text,
                };

                homeController.updateProduct(product,productIdClr.text);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.deepOrange,
                ),
                width: Get.width,
                height: 45,
                child: Center(
                  child: Text(
                    "Update Product",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
