import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:myapp/Views/ActionsPage.dart';
import 'package:myapp/Controllers/Controller.dart';
import 'package:myapp/Models/ProductModel.dart';
import 'package:myapp/Views/Products_details_page.dart';
import 'package:myapp/Products_shimmer/Category_shimmer.dart';
import 'package:myapp/Products_shimmer/Product_shimmer.dart';
import 'package:myapp/Views/Produtcsview_by_category.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: InkWell(
              onTap: (){
                Get.to(Actionspage());
              },
              child: CircleAvatar(
                backgroundColor: Colors.deepOrange,
                radius: 14,
                child: Icon(Icons.add,color: Colors.white,),
              ),
            ),
          )
        ],
          title: Text("Products")),
      body: Column(
        children: [
          SizedBox(
            height: 40,
            child: GetBuilder<HomeController>(
              builder: (context) {
                return homeController.isCategorisLoding?CategoryShimmer(): ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: homeController.categoris.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: GestureDetector(
                        onTap: (){
                          homeController.getProductsbycategory(homeController.categoris[index]);
                          Get.to(ProdutcsviewByCategory(homeController.categoris[index].toUpperCase()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                              child: Text(homeController.categoris[index].toUpperCase(),
                                style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),

          SizedBox(height: 10,),

          Expanded(
            child: GetBuilder<HomeController>(
              builder: (context) {
                return homeController.isLoding
                    ? ProductShimmer()
                    : Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                              ),
                          shrinkWrap: true,
                          itemCount: homeController.products.length,
                          itemBuilder: (context, index) {
                            ProductModel product =
                                homeController.products[index];
                            return GestureDetector(
                              onTap: (){
                                Get.to(ProductsDetailsPage(product));
                              },
                              child: Card(
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
                                      SizedBox(height: 8),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text(
                                          product.title!,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Row(
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
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      );
              },
            ),
          ),
        ],
      ),
    );
  }
}

//
//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:myapp/Controllers/Controller.dart';
// import 'package:myapp/Models/ProductModel.dart';
//
// class Homepage extends StatelessWidget {
//   Homepage({super.key});
//
//   HomeController homeController=Get.put(HomeController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Get API Integration"),
//       ),
//       body: GetBuilder<HomeController>(builder: (context){
//         return homeController.isLoding?Center(child: CircularProgressIndicator()): ListView.builder(
//             shrinkWrap: true,
//             itemCount: homeController.products.length,
//             itemBuilder:(context,index){
//               ProductModel product=homeController.products[index];
//               return Card(
//                 child: ListTile(
//                   leading:Image.network(product.image!) ,
//                   title: Text(product.title!,
//                     overflow:TextOverflow.ellipsis ,),
//                   subtitle: Text(product.description!),
//                 ),
//               );
//             });
//       }),
//     );
//   }
// }
