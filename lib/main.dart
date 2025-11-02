import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/Views/Add_ProductPage.dart';
import 'package:myapp/Views/HomePage.dart';
import 'package:myapp/Views/Update_Productpage.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
