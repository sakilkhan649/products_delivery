import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/Controllers/Controller.dart';

class DeleteProductpage extends StatelessWidget {
  DeleteProductpage({super.key});

  final TextEditingController productIdClr = TextEditingController();

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

            SizedBox(height: 15),

            InkWell(
              onTap: () {
                homeController.deleteProduct(productIdClr.text);
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
                    "Delete Product",
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
