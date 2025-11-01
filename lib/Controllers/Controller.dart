import 'dart:convert';

import 'package:get/get.dart';
import 'package:myapp/Models/ProductModel.dart';
import 'package:myapp/Services/Homeservice.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  //HomeService homeService=HomeService();

  late HomeService homeService;

  List<ProductModel> products = [];

  List<String> categoris = [];
  List<ProductModel> productsbycategory = [];

  bool isCategorisLoding = false;

  bool isLoding = false;

  bool isCategorybyProductsLoding = false;

  @override
  void onInit() {
    homeService = HomeService();
    getCategoris();
    getProducts();
    // TODO: implement onInit
    super.onInit();
  }

  void getProducts() async {
    try {
      http.Response response = await homeService.getProducts();
      if (response.statusCode == 200) {
        //print(response.body);
        isLoding = true;
        update();
        var data = jsonDecode(response.body);
        for (int i = 0; i < data.length; i++) {
          products.add(ProductModel.fromJson(data[i]));
        }
        isLoding = false;
        update();
        //print(products);
      }
    } catch (e) {
      print(e);
    }
  }

  void getProductsbycategory(String category) async {
    try {
      isCategorybyProductsLoding = true;
      update();
      http.Response response = await homeService.getProductsbyCategoris(category);
      var data=jsonDecode(response.body);
      for(int i=0;i<data.length;i++){
        productsbycategory.add(ProductModel.fromJson(data[i]));
      }

      print(productsbycategory);

      isCategorybyProductsLoding = false;
      update();

    } catch (e) {
      print(e);
      isCategorybyProductsLoding = false;
      update();
    }
  }

  void getCategoris() async {
    try {
      isCategorisLoding = true;
      update();
      http.Response response = await homeService.getCategoris();
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);

        for (int i = 0; i < data.length; i++) {
          categoris.add(data[i]);
          isCategorisLoding = false;
          update();
        }
      } else {
        print("Something wrong");
      }
    } catch (e) {
      isCategorisLoding = false;

      update();
      print(e);
    }
  }
}
