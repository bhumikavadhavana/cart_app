import 'package:cart_app/views/cart_page.dart';
import 'package:cart_app/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/cart', page: () => CartPage()),
      ],
    ),
  );
}
